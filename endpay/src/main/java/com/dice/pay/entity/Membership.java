package com.dice.pay.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Membership") 
public class Membership {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_seq")
    @SequenceGenerator(name = "id_seq", sequenceName = "M_SEQ", allocationSize = 1)
    private Long mid;
    
    private String userid;
    private String userpw;
	private String uname;
    private String gender;
    private String phone;
    private String grade;
    private String email;

    @Temporal(TemporalType.TIMESTAMP)
    private Date udate;
    
    @OneToMany(mappedBy = "membership", cascade = CascadeType.ALL)
    private List<Spending> spendings;
    
    public Membership() {
    }
    
	public Membership(Long mid, String userid, String userpw, String uname, String gender, String phone, 
			String grade, String email, Date udate) {
		this.mid = mid;
		this.userid = userid;
		this.userpw = userpw;
		this.uname = uname;
		this.gender = gender;
		this.phone = phone;
		this.grade = grade;
		this.email = email;
		this.udate = udate;
	}
	
    public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public Long getMid() {
		return mid;
	}

	public String getUserid() {
		return userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public String getUname() {
		return uname;
	}

	public String getGender() {
		return gender;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public Date getUdate() {
		return udate;
	}

	public void setMid(Long mid) {
		this.mid = mid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUdate(Date udate) {
		this.udate = udate;
	}
}