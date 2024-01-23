package com.dice.pay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dice.pay.entity.Membership;
import com.dice.pay.service.MembershipService;

@Controller()
public class MemberController {
	
	@Autowired
	MembershipService ms;
	
	@PostMapping("/api/newsign")
	public String memberSave(Membership member) {
		System.out.println("save");
		
		return "redirect:/main";
	}
}
