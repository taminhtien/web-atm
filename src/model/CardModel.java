package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import entities.Card;

public class CardModel {
	public List<Card> getListCard() {
		List<Card> cards = null;
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();

		try {
			session.getTransaction().begin();

			String sql = "Select e from " + Card.class.getName() + " e ";
			Query query = session.createQuery(sql);
			cards = query.list();

			for (Card c : cards) {
				System.out.println("Card: " + c.getCardNo());
			}

			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return cards;
	}

	public Card getCard(String cardNo) {
		Card c = null;
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();

		try {
			session.getTransaction().begin();
			String sql = "Select c from " + Card.class.getName() + " c "
					+ " where c.cardNo=:cardNo ";

			Query query = session.createQuery(sql);
			query.setParameter("cardNo", cardNo);

			List<Card> cards = query.list();

			for (Card card : cards) {
				System.out.println("Card: " + card.getCardNo() + " : ");
			}
			if(cards.get(0) != null)
				c = cards.get(0);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return c;
	}
}