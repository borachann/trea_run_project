package com.kosign.wecafe.services;

import org.hibernate.Query;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;

import com.kosign.wecafe.entities.ExchangeRate;
import com.kosign.wecafe.entities.Unit;
import com.kosign.wecafe.util.HibernateUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ExchangeServiceImp implements ExchangeService{
//	@Autowired
//	private ExchangeRate exchangeRate;
//	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public ExchangeRate  getExchangerate() {
		// TODO Auto-generated method stub
		Session session = null;
		try{
			session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM ExchangeRate");
			ExchangeRate	unitlist = (ExchangeRate)query.uniqueResult();	
			return unitlist;
		}catch(Exception e){
			e.printStackTrace();
		}	
		return null;  
	}

	@Override
	@Transactional
	public Boolean setExchangerate(Integer rate) {
		// TODO Auto-generated method stub
		Session session = null;
		try{
			session = sessionFactory.getCurrentSession();
			
			// Read ExchangeRate form db set to update
			ExchangeRate exchange = session.load(ExchangeRate.class, 1);
			
			if (exchange.getId() > 0) {
				exchange.setExchangerate(rate);
				session.save(exchange);
			} else {
				exchange = new ExchangeRate();
				exchange.setExchangerate(rate);
				session.save(exchange);
			}
			
			/*Query query = session.createQuery("UPDATE ExchangeRate set exchangerate = :rate where id = 1");
			query.setParameter("rate", rate);
			int result = query.executeUpdate();*/
		
			return true;
		
		} catch(Exception e){
			e.printStackTrace();
		}	
		return false;
	}

	@Override
	@Transactional
	public Boolean setCostMoney(Integer money) {
		// TODO Auto-generated method stub
		Session session = null;
		try{
			session = sessionFactory.getCurrentSession();
			
			// Read ExchangeRate form db set to update
			ExchangeRate exchange = session.load(ExchangeRate.class, 1);
			
			if (exchange.getId() > 0) {
				exchange.setCostmoney(money);
				session.save(exchange);
			} else {
				exchange = new ExchangeRate();
				exchange.setCostmoney(money);
				session.save(exchange);
			}
			
			/*Query query = session.createQuery("UPDATE ExchangeRate set exchangerate = :rate where id = 1");
			query.setParameter("rate", rate);
			int result = query.executeUpdate();*/
		
			return true;
		
		} catch(Exception e){
			e.printStackTrace();
		}	
		return false;
	}

}
