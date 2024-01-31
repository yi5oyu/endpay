package com.dice.pay.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Spending")
public class Spending {

	@Override
	public String toString() {
		return "Spending [sid=" + sid + ", membership=" + membership + ", extype=" + extype + ", contype=" + contype
				+ ", sdate=" + sdate + ", money=" + money + ", detailtext=" + detailtext + ", memo=" + memo + "]";
	}

	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "spending_seq")
    @SequenceGenerator(name = "spending_seq", sequenceName = "S_SEQ", allocationSize = 1)
    private Long sid;

	@ManyToOne
	@JoinColumn(name = "mid", nullable = false)
	private Membership membership;

    private String extype;
    private String contype;
    private String sdate;
    private int money;
    private String detailtext;
    private String memo;

    public Spending() {
    }

	public Long getSid() {
		return sid;
	}

	public void setSid(Long sid) {
		this.sid = sid;
	}

	public Membership getMembership() {
		return membership;
	}

	public void setMembership(Membership membership) {
		this.membership = membership;
	}

	public String getExtype() {
		return extype;
	}

	public void setExtype(String extype) {
		this.extype = extype;
	}

	public String getContype() {
		return contype;
	}

	public void setContype(String contype) {
		this.contype = contype;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String getDetailtext() {
		return detailtext;
	}

	public void setDetailtext(String detailtext) {
		this.detailtext = detailtext;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
}