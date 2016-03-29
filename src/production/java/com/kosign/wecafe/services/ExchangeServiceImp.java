package com.kosign.wecafe.services;

import org.hibernate.Query;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.kosign.wecafe.entities.ExchangeRate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

public class ExchangeServiceImp implements ExchangeService{
	@Autowired
	private ExchangeRate exchangeRate;
	
	@Override
	public Integer getExchangerate() {
		// TODO Auto-generated method stub
		Session session = null;
		Query query = session.createQuery("from ExchangeRate");
		return (Integer) query.uniqueResult();
	}

	@Override
	@Transactional
	public void setExchangerate(Integer rate) {
		// TODO Auto-generated method stub
		Session session = null;
		Query query = session.createQuery("UPDATE Employee set salary = :rate ");
		query.setParameter("rate", rate);
		int result = query.executeUpdate();
		System.out.println("Rows affected: " + result);
	}

}
