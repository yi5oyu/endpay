package com.dice.pay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dice.pay.entity.Membership;

@Controller()
public class MemberController {
	
	@PostMapping("/api/newsign")
	public String memberSave(Membership member) {
		System.out.println("save");
		
		return "main";
	}
}
