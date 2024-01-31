package com.dice.pay.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dice.pay.entity.Membership;
import com.dice.pay.entity.Spending;
import com.dice.pay.service.SpendingService;

@RestController
@RequestMapping("/api/spending")
public class SpendController {
	
	@Autowired
	SpendingService ss;
	
	@PostMapping("/expenses")
	public Spending saveExpenses(HttpSession session,
			@RequestBody Spending spending) {
		 Membership membership = (Membership)session.getAttribute("member");
//		 System.out.println(membership.getMid());
		 spending.setMembership(membership);
//		 System.out.println(spending.toString());
		return ss.saveExpenses(spending);
	}
	
	@GetMapping("/all")
	public List<Spending> getAllSpendings(){
		return ss.allSpendings();
	}
	
	@GetMapping("/list/{mid}")
	public Page<Spending> getSpendingList(
			@PathVariable Long mid,
			@RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "10") int size,
			@RequestParam(defaultValue = "sdate") String sort,
			@RequestParam(defaultValue = "DESC") String title){
		
		if(sort.equals("undefined") && title.equals("undefined")) {
			sort = "sdate";
			title = "DESC";
		}
		System.out.println("gdgsd"+ sort);
		System.out.println("gdgdd"+ title);
		if(title.equals("DESC")) {
			Pageable pageable = PageRequest.of(page, size, Sort.by(sort).descending());
			return ss.midSpendings(mid, pageable);
		} else {
			Pageable pageable = PageRequest.of(page, size, Sort.by(sort).ascending());
			return ss.midSpendings(mid, pageable);
		}
		
//		if(sort.equals("none")){
//			Pageable pageable = new PageRequest(page, size);
//			return ss.midSpendings(mid, pageable);
//		} else {
//			if(sort.equals("DESC")) {
//				Pageable pageable = new PageRequest(page, size, Sort.Direction.DESC, title);
//				return ss.midSpendings(mid, pageable);
//			} else {
//				Pageable pageable = new PageRequest(page, size, Sort.Direction.ASC, title);
//				return ss.midSpendings(mid, pageable);
//			}
//		}
	}
	
	
	@DeleteMapping("/delete")
	public void deleteSpending(
			@RequestBody List<Long> sids) {
		ss.deleteSpending(sids);
	}
	
//	
//	@GetMapping("/login")
//	public ResponseEntity<Message> login(HttpSession session,
//			@RequestParam String userid,
//			@RequestParam String userpw){
//			Membership member = ms.login(userid, userpw);
//			if(member != null) {
//				session.setAttribute("member", member);
//				return new ResponseEntity<Message>(new Message("성공",HttpStatus.OK.value(),ms.login(userid, userpw)),HttpStatus.OK);
//			} else
//				return new ResponseEntity<Message>(new Message("실패",HttpStatus.UNAUTHORIZED.value(),ms.login(userid, userpw)),HttpStatus.UNAUTHORIZED);
//	}
//
//	@PutMapping("/update")
//    public void updateMember(HttpSession session,
//            @RequestBody Membership member) {
//		ms.updateMember(member);
//		session.setAttribute("member", ms.findMember(member.getMid()));
//    }
//	

}
