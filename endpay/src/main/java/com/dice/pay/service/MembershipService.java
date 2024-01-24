package com.dice.pay.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dice.pay.entity.Membership;
import com.dice.pay.repository.MembershipRepository;

@Service
@Transactional
public class MembershipService {
	
	@Autowired
	MembershipRepository mr;
	
	public Membership saveMember(Membership member) {
		return mr.save(member);
	}
	
	public List<Membership> allMembers(){
		return mr.findAll();
	}
	
}
