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
    
    @RequestMapping("nn")
    public String fsdf(){
    	return "login";
    }
    @RequestMapping("nnn")
    public String fsddf(){
    	return "sign";
    }
    @RequestMapping("nnnn")
    public String fsddfgef(){
    	return "main";
    }
    @RequestMapping("sh")
    public String fsddgeff(){
    	return "show";
    }
    @RequestMapping("sp")
    public String fsddff(){
    	return "spending";
    }
	/*
	 * @GetMapping("/naver/login") public
	 */
}
