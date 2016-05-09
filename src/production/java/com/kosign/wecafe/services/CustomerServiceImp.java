package com.kosign.wecafe.services;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kosign.wecafe.entities.Customer;
import com.kosign.wecafe.entities.Pagination; 
import com.kosign.wecafe.util.HibernateUtil;
import org.hibernate.SessionFactory;

@Service
public class CustomerServiceImp implements CustomerService{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getAllCustomer(Pagination pagination) {
		Session session = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();			
			session.getTransaction().begin();
			Query query = session.createQuery("FROM Customer");
			query.setFirstResult(pagination.offset());
			query.setMaxResults(pagination.getPerPage());
			@SuppressWarnings("unchecked")
			List<Customer> supplier = (List<Customer>)query.list(); 
			return supplier;
			
			 
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null; 
	}

	@Override
	@Transactional
	public Boolean saveCustomer(Customer customer) {
		Session session = null;
		try {
			session =  HibernateUtil.getSessionFactory().openSession();
			session.getTransaction().begin();
			
			session.save(customer);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
			//HibernateUtil.getSessionFactory().close();
		}
		
		return false;
	}

	@Override
	public Boolean updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> searchCustomer(String str) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	@Transactional
	public Long count() {
		Session session = null;
		try{
			session = sessionFactory.getCurrentSession();
			return (Long) session.createCriteria(Customer.class).setProjection(Projections.rowCount()).uniqueResult();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return 0L; 
	}

}
