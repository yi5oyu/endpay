package com.dice.pay.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dice.pay.entity.Membership;

public interface MembershipRepository extends JpaRepository<Membership, Long> {
	List<Membership> findByUserid(String userid);
}
