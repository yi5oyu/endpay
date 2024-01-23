package com.dice.pay;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dice.pay.dto.Member;

@Controller
public class TestContoller {
	
	@RequestMapping("aa")
	public String gg() {
		return "home";
	}
	
    @GetMapping("/data")
    @ResponseBody
    public List<Member> getData() {
    	List<Member> l = new ArrayList();
        return l;
    }
    
	/*
	 * @GetMapping("/naver/login") public
	 */
}
