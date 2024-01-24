package com.dice.pay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dice.pay.entity.Membership;
import com.dice.pay.service.MembershipService;

@Controller()
public class MemberController {
	
	@Autowired
	MembershipService ms;
	
	@PostMapping("/api/newsign")
	public String memberSave(
			@ModelAttribute Membership member) {
		System.out.println("save");
		System.out.println(member.getGender());
		ms.saveMember(member);
		return "redirect:/main";
	}
}
