package com.dice.pay.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dice.pay.dto.Message;
import com.dice.pay.entity.Membership;
import com.dice.pay.repository.MembershipRepository;

@Service
@Transactional
public class MembershipService {
	
	@Autowired
	MembershipRepository mr;
	
	public Membership findMember(Long mid) {
		return mr.findByMid(mid);
	}
	
	public void saveMember(Membership member) {
		member.setUdate(new Date());
		member.setGrade("GUEST");
		mr.save(member);
	}
	
	public List<Membership> allMembers(){
		return mr.findAll();
	}
	
	public Membership login(String userid, String userpw) {
		return mr.findByUseridAndUserpw(userid, userpw);
	}
	
	public Membership updateMember(Membership member) {
		Membership updateMember = mr.findByMid(member.getMid());
		if(updateMember != null) {
			updateMember.setUserid(member.getUserid());
			updateMember.setUserpw(member.getUserpw());
			updateMember.setUname(member.getUname());
			updateMember.setPhone(member.getPhone());
			updateMember.setEmail(member.getEmail());
			return mr.save(updateMember);
		} else 
			throw new RuntimeException("ID가 " + member.getMid() + "인 회원을 찾을 수 없습니다.");
	}
	
	public Membership deleteMember(Long mid) {
		Membership m = mr.findByMid(mid);
		if(m != null)
			mr.delete(m);
		else
			m = null;
		return m;
	}
}
