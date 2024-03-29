package com.dice.pay.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dice.pay.entity.Spending;
import com.dice.pay.repository.SpendingRepository;

@Service
@Transactional
public class SpendingService {
	
	@Autowired
	SpendingRepository sr;
	
	public Spending findExpenses(Long sid) {
		return sr.findBySid(sid);
	}
	
	public Spending saveExpenses(Spending spending) {
		return sr.save(spending);
	}
	
	public List<Spending> allSpendings(){
		return sr.findAll();
	}
	
	public Page<Spending> midSpendings(Long mid, Pageable pageable){
		return sr.findByMembership_Mid(mid, pageable);
	}
	
	public List<Object[]> dateSpendings(Long mid, String startDate, String endDate){
		return sr.findTotalMoneyByContype(mid, startDate, endDate);
	}
	
	public List<Object[]> monthsSpendings(Long mid, String year){
		return sr.findTotalMoneyByMonth(mid, year);
	}
	
//	public Page<Spending> midSpendings(Long mid, Pageable pageable){
//		return sr.findByMembershipMid(mid, pageable);
//	}
	
//	
//	public Membership login(String userid, String userpw) {
//		return mr.findByUseridAndUserpw(userid, userpw);
//	}
//	
//	public Membership updateMember(Membership member) {
//		Membership updateMember = mr.findByMid(member.getMid());
//		if(updateMember != null) {
//			updateMember.setUserid(member.getUserid());
//			updateMember.setUserpw(member.getUserpw());
//			updateMember.setUname(member.getUname());
//			updateMember.setPhone(member.getPhone());
//			updateMember.setEmail(member.getEmail());
//			return mr.save(updateMember);
//		} else 
//			throw new RuntimeException("ID가 " + member.getMid() + "인 회원을 찾을 수 없습니다.");
//	}
//	
	public void deleteSpending(List<Long> sids) {
		for(Long sid: sids) {
			Spending spending = sr.findBySid(sid);
		    if (spending != null) {
		        sr.delete(spending);
		    } else 
		        throw new IllegalArgumentException("해당 유저를 찾을 수 없습니다: " + sid);	
		}
	}
}
