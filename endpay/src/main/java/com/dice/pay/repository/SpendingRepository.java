package com.dice.pay.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.dice.pay.entity.Spending;

public interface SpendingRepository extends JpaRepository<Spending, Long> {
	Spending findBySid(Long sid);
	
//	 @Query(value = "SELECT s FROM Spending s JOIN s.membership m WHERE m.mid = :mid",
//	           countQuery = "SELECT COUNT(s) FROM Spending s JOIN s.membership m WHERE m.mid = :mid")
//	 Page<Spending> findByMembershipMid(@Param("mid") Long mid, Pageable pageable);
	
	@Query(value = "SELECT * FROM Spending s LEFT JOIN Membership m ON s.mid = m.mid WHERE m.mid = :mid", nativeQuery = true)
    Page<Spending> findByMembershipMid(@Param("mid") Long mid, Pageable pageable);
	
	@Query(value = "SELECT * FROM Spending s LEFT JOIN Membership m ON s.mid = m.mid WHERE m.mid = :mid AND TO_DATE(s.sdate, 'YYYY-MM-DD') BETWEEN TO_DATE(:startDate, 'YYYY-MM-DD') AND TO_DATE(:endDate, 'YYYY-MM-DD')", nativeQuery = true)
	List<Spending> findListByMembershipMid(@Param("mid") Long mid, @Param("startDate") String startDate, @Param("endDate") String endDate);
	
    @Query(value = "SELECT s.contype, SUM(s.money) AS total_money " +
		            "FROM Spending s " +
		            "LEFT JOIN Membership m ON s.mid = m.mid " +
		            "WHERE m.mid = :mid AND TO_DATE(s.sdate, 'YYYY-MM-DD') BETWEEN TO_DATE(:startDate, 'YYYY-MM-DD') AND TO_DATE(:endDate, 'YYYY-MM-DD') " +
		            "GROUP BY s.contype", nativeQuery = true)
    List<Object[]> findTotalMoneyByContype(@Param("mid") Long mid, @Param("startDate") String startDate, @Param("endDate") String endDate);

    @Query(value = "SELECT TO_CHAR(TO_DATE(sdate, 'YYYY-MM-DD'), 'YYYY-MM') AS month, " +
            "       SUM(money) AS total_money " +
            "FROM Spending " +
            "WHERE mid = :mid AND SUBSTR(sdate, 1, 4) = :year " +
            "GROUP BY TO_CHAR(TO_DATE(sdate, 'YYYY-MM-DD'), 'YYYY-MM') " +
            "ORDER BY TO_DATE(TO_CHAR(TO_DATE(sdate, 'YYYY-MM-DD'), 'YYYY-MM'), 'YYYY-MM')", nativeQuery = true)
    List<Object[]> findTotalMoneyByMonth(@Param("mid") Long mid, @Param("year") String year);

}
