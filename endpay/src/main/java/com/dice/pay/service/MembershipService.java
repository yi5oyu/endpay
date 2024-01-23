package com.dice.pay.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dice.pay.entity.Membership;
import com.dice.pay.repository.MemberRepository;

@Service
@Transactional
public class MembershipService {
	
	@Autowired
	MemberRepository mr;
	
	public void join(Membership member) {
		mr.save(member);
	}
}
