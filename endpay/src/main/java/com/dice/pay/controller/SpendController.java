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
	}
	
	@DeleteMapping("/delete")
	public void deleteSpending(
			@RequestBody List<Long> sids) {
		ss.deleteSpending(sids);
	}
	
	
	@GetMapping("/date/{mid}/{startDate}/{endDate}")
	public List<Object[]> dateSpendigs(
			@PathVariable Long mid,
			@PathVariable String startDate,
			@PathVariable String endDate
			) {
		System.out.println(mid);
		System.out.println(startDate);
		System.out.println(endDate);
		// 각각 mid: 61, startDate: 2023-01-01, endDate: 2023-12-30 값이 들어옴
		return ss.dateSpendings(mid, startDate, endDate);	
	}
	
	@GetMapping("/months/{mid}/{year}")
	public List<Object[]> monthsSpendings(
			@PathVariable Long mid,
			@PathVariable String year
			){
		return ss.monthsSpendings(mid, year);
	}
	
	

//
//	@PutMapping("/update")
//    public void updateMember(HttpSession session,
//            @RequestBody Membership member) {
//		ms.updateMember(member);
//		session.setAttribute("member", ms.findMember(member.getMid()));
//    }
//	

}
