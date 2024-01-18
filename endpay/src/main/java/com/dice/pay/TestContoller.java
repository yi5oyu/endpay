package com.dice.pay;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dice.pay.model.User;

@Controller
public class TestContoller {
	
	@RequestMapping("aa")
	public String gg() {
		return "home";
	}
	
    @GetMapping("/data")
    @ResponseBody
    public List<User> getData() {
    	List<User> l = new ArrayList();
        User u = new User("ff","gg");
        l.add(u);
        u = new User("gg","hh");
        l.add(u);
        return l;
    }
    
    
}
//Request processing failed; nested exception is java.lang.IllegalArgumentException: No converter found for return value of type: class java.util.ArrayList