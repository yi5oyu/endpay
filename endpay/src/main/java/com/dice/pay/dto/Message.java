package com.dice.pay.dto;

import com.dice.pay.entity.Membership;

public class Message {
    private String message;
    private int statusCode;
    private Membership data;
    
    public Message(String message, int statusCode, Membership data) {
        this.message = message;
        this.statusCode = statusCode;
        this.data = data;
    }

    public String getMessage() {
        return message;
    }

    public int getStatusCode() {
        return statusCode;
    }
    
    public Membership getData() {
    	return data;
    }
}