package com.dice.pay.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dice.pay.entity.Membership;

public interface MembershipRepository extends JpaRepository<Membership, Long> {
	
}
