package com.dice.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestContoller {
	
	@RequestMapping("aa")
	public String gg() {
		return "home";
	}
}
