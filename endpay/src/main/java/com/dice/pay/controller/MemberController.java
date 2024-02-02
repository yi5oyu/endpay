package com.dice.pay.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@PostMapping
	public Membership saveMember(
			@RequestBody Membership member) {
		return ms.saveMember(member);
	}
	
	@GetMapping
	public List<Membership> findMembers(){
		return ms.allMembers();
	}
	
	@GetMapping("/{mid}")
	public Membership findMember(
			@PathVariable Long mid) {
		return ms.findMember(mid);
	}
	
	@GetMapping("/login")
	public ResponseEntity<Message> checkMember(HttpSession session,
			@RequestParam String userid,
			@RequestParam String userpw){
			Membership member = ms.login(userid, userpw);
			if(member != null) {
				session.setAttribute("member", member);
				return new ResponseEntity<Message>(new Message("성공",HttpStatus.OK.value(),ms.login(userid, userpw)),HttpStatus.OK);
			} else
				return new ResponseEntity<Message>(new Message("실패",HttpStatus.UNAUTHORIZED.value(),ms.login(userid, userpw)),HttpStatus.UNAUTHORIZED);
	}

	@PutMapping
    public void updateMember(HttpSession session,
            @RequestBody Membership member) {
		ms.updateMember(member);
		session.setAttribute("member", ms.findMember(member.getMid()));
    }
	
	@DeleteMapping("/{mid}")
	public void deleteMember(
			@PathVariable Long mid) {
		ms.deleteMember(mid);
	}
}
