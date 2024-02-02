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
	
	Page<Spending> findByMembership_Mid(Long mid, Pageable pageable);
	
	List<Spending> findByMembershipMidAndSdateBetween(Long mid, String startDate, String endDate);
	
    @Query(value = "SELECT s.contype, SUM(s.money) AS total_money " +
            "FROM Spending s " +
            "LEFT JOIN Membership m ON s.mid = m.mid " +
            "WHERE m.mid = :mid AND STR_TO_DATE(s.sdate, '%Y-%m-%d') BETWEEN STR_TO_DATE(:startDate, '%Y-%m-%d') AND STR_TO_DATE(:endDate, '%Y-%m-%d') " +
            "GROUP BY s.contype", nativeQuery = true)
    List<Object[]> findTotalMoneyByContype(@Param("mid") Long mid, @Param("startDate") String startDate, @Param("endDate") String endDate);

    @Query(value = "SELECT DATE_FORMAT(STR_TO_DATE(s.sdate, '%Y-%m-%d'), '%Y-%m') AS month, " +
            "       SUM(s.money) AS total_money " +
            "FROM Spending s " +
            "WHERE s.mid = :mid AND SUBSTRING(s.sdate, 1, 4) = :year " +
            "GROUP BY DATE_FORMAT(STR_TO_DATE(s.sdate, '%Y-%m-%d'), '%Y-%m') " +
            "ORDER BY STR_TO_DATE(DATE_FORMAT(STR_TO_DATE(s.sdate, '%Y-%m-%d'), '%Y-%m'), '%Y-%m')", nativeQuery = true)
    List<Object[]> findTotalMoneyByMonth(@Param("mid") Long mid, @Param("year") String year);

}
