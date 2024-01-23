package com.dice.pay.controller;

import org.springframework.stereotype.Controller;
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
    @RequestMapping("main")
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
}
