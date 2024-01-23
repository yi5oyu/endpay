package com.dice.pay.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.dice.pay.entity.Membership;

@Repository
public class MemberRepository {
	
	@PersistenceContext
	EntityManager em;
	
	public void save(Membership member) {
		em.persist(member);
	}
	
	public Membership fineOne(Long id) {
		return em.find(Membership.class, id);
	}
	
	/*
	 * public List<Member> findAll(){ return
	 * em.createQuery("select m from Member m ",Member.class).getResultList(); }
	 */
}
