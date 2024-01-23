package com.dice.pay.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "member") // ���̺� �̸��� ��������� ����
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_seq")
    @SequenceGenerator(name = "id_seq", sequenceName = "M_SEQ", allocationSize = 1)
    private Long m_id;

    private String userid;
    private String username;
    private String uname;
    private String gender;
    private String phone;
    private String email;

    @Temporal(TemporalType.TIMESTAMP)
    private Date udate;

    // ������, ����, ���� �� �ʿ��� �޼��� �߰�
}