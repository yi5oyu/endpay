package com.dice.pay.entity;

import javax.persistence.Entity;
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

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "spending_seq")
    @SequenceGenerator(name = "spending_seq", sequenceName = "S_SEQ", allocationSize = 1)
    private Long s_id;

    @ManyToOne
    @JoinColumn(name = "m_id", nullable = false)
    private Membership membership;

    private String exType;
    private String conType;
    private String sDate;
    private String money;
    private String detailText;
    private String memo;

    public Spending() {
    }

    public Spending(Long s_id, Membership membership, String exType, String conType, String sDate, String money,
                    String detailText, String memo) {
        this.s_id = s_id;
        this.membership = membership;
        this.exType = exType;
        this.conType = conType;
        this.sDate = sDate;
        this.money = money;
        this.detailText = detailText;
        this.memo = memo;
    }

    public Long getS_id() {
        return s_id;
    }

    public Membership getMembership() {
        return membership;
    }

    public String getExType() {
        return exType;
    }

    public String getConType() {
        return conType;
    }

    public String getsDate() {
        return sDate;
    }

    public String getMoney() {
        return money;
    }

    public String getDetailText() {
        return detailText;
    }

    public String getMemo() {
        return memo;
    }

    public void setS_id(Long s_id) {
        this.s_id = s_id;
    }

    public void setMembership(Membership membership) {
        this.membership = membership;
    }

    public void setExType(String exType) {
        this.exType = exType;
    }

    public void setConType(String conType) {
        this.conType = conType;
    }

    public void setsDate(String sDate) {
        this.sDate = sDate;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public void setDetailText(String detailText) {
        this.detailText = detailText;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}