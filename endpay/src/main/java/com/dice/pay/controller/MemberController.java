package com.dice.pay.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dice.pay.dto.Message;
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
	
	@GetMapping("/login")
	public ResponseEntity<Message> login(
			@RequestParam String userid,
			@RequestParam String userpw){
		System.out.println("in");
		if(ms.login(userid, userpw) != null) {
			return new ResponseEntity<Message>(new Message("성공",HttpStatus.OK.value(),ms.login(userid, userpw)),HttpStatus.OK);
		} else
			return new ResponseEntity<Message>(new Message("실패",HttpStatus.UNAUTHORIZED.value(),ms.login(userid, userpw)),HttpStatus.UNAUTHORIZED);
	}
	
	@PutMapping("f")
	public String gme() {
		return "gd";
	}
}
