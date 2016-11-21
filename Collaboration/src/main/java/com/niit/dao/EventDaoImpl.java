package com.niit.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Event;
import java.util.List;

import javax.transaction.Transactional;

@Repository("eventDao")
@Transactional
public class EventDaoImpl implements EventDao {

	@Autowired
	private SessionFactory sessionFactory;

	public EventDaoImpl() {
		super();
	}

	public EventDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdateEvent(Event event) {

		Session session = sessionFactory.openSession();
		try {
			session.saveOrUpdate(event);
			session.flush();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	@Transactional
	public Event getEventById(String eventId) {
		Session session = sessionFactory.openSession();
		return (Event) session.get(Event.class, eventId);
	}

	public void delete(String eventId) {
		// TODO Auto-generated method stub
		try {
			Event event=getEventById(eventId);
			sessionFactory.getCurrentSession().delete(event);
			sessionFactory.getCurrentSession().flush();
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public List<Event> getAllEvents() {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Event");
		List<Event> events = query.list();
		return events;
	}

	public boolean delete(Event event) {
		// TODO Auto-generated method stub
		return false;
	}
	
}