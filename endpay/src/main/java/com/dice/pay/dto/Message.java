package com.dice.pay.dto;

import com.dice.pay.entity.Membership;

public class Message {
    private String message;
    private int statusCode;
    private Object data;
    
    public Message(String message, int statusCode, Object data) {
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
    
    public Object getData() {
    	return data;
    }
}