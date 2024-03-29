package com.dice.pay.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
	
    @RequestMapping("login")
    public String viewLogin(){
    	return "login";
    }
    @RequestMapping("newsign")
    public String viewSign(){
    	return "sign";
    }
    @RequestMapping("cashflow")
    public String viewMain(){
    	return "main";
    }
    @RequestMapping("show")
    public String viewShow(){
    	return "show";
    }
    @RequestMapping("spending")
    public String viewSpend(){
    	return "spending";
    }
    @RequestMapping("mypage")
    public String viewMypage(){
    	return "mypage";
    }
    @RequestMapping("home")
    public String viewHomepage(){
    	return "home";
    }
    @RequestMapping("rewriteinfo")
    public String viewRewriteInfo(){
    	return "rewriteinfo";
    }
    @RequestMapping("myinfo")
    public String viewMyInfo(){
    	return "myinfo";
    }
    @RequestMapping("myspending")
    public String viewMySpending(){
    	return "myspending";
    }
    @RequestMapping("homeapi")
    public String homeapi(){
    	return "homeapi";
    }
    @RequestMapping("homecontent")
    public String homecontent(){
    	return "homecontent";
    }
    @RequestMapping("homefix")
    public String homefix(){
    	return "homefix";
    }
    @RequestMapping("ch_history")
    public String ch_history(){
    	return "ch_history";
    }
    @RequestMapping("ch_feature")
    public String ch_feature(){
    	return "ch_feature";
    }
    @RequestMapping("ch_bug")
    public String ch_bug(){
    	return "ch_bug";
    }
    @RequestMapping("logout")
    public String logout(HttpSession session) {
    	session.removeAttribute("member");
        return "redirect:/login";
    }
}
