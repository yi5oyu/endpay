package com.dice.pay.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dice.pay.entity.Membership;
import com.dice.pay.service.MembershipService;

@RestController
@RequestMapping("/api/members")
public class MemberController {
	
	@Autowired
	MembershipService ms;
	
	@PostMapping("/newsign")
	public Membership memberSave(
			@RequestBody Membership member) {
		return ms.saveMember(member);
	}
	
	@GetMapping("/all")
	public List<Membership> getAllMembers(){
		return ms.allMembers();
	}
}
