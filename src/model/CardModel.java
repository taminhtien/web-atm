package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import entities.Card;

public class CardModel {

	public boolean isExistCard(String cardNo) {
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();

		try {
			session.getTransaction().begin();
			String sql = "Select c from " + Card.class.getName() + " c "
					+ " where c.cardNo=:cardNo ";

			Query query = session.createQuery(sql);
			query.setParameter("cardNo", cardNo);

			List<Card> cards = query.list();

			if(cards != null) {
				return true;
			}
			
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return false;
	}
	
	public boolean isCorrectPin(String cardNo, String pinNo) {
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();

		try {
			session.getTransaction().begin();
			String sql = "Select c from " + Card.class.getName() + " c "
					+ " where c.cardNo=:cardNo ";

			Query query = session.createQuery(sql);
			query.setParameter("cardNo", cardNo);

			List<Card> cards = query.list();

			System.out.println(cards.get(0).getPin());
			if(cards != null && cards.get(0).getPin().equals(pinNo))
				return true;
			
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return false;
	}
}