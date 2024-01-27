package com.dice.pay.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dice.pay.entity.Spending;

public interface SpendingRepository extends JpaRepository<Spending, Long> {
	Spending findBySid(Long sid);
}
