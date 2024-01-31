package com.dice.pay.repository;

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
}
