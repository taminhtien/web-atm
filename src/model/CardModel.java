package model;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import entities.Card;

public class CardModel {

	public List<Card> getCard(String cardNo) {
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();
		List<Card> cards = null;
		try {
			session.getTransaction().begin();
			String sql = "Select c from " + Card.class.getName() + " c "
					+ " where c.cardNo=:cardNo ";

			Query query = session.createQuery(sql);
			query.setParameter("cardNo", cardNo);

			cards = query.list();

			if (cards != null) {
				session.getTransaction().commit();
				return cards;
			}
			session.getTransaction().commit();

		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return cards;
	}

	public boolean isExistCard(String cardNo) {
		List<Card> cards = getCard(cardNo);
		if (cards != null) {
			return true;
		}
		return false;
	}

	public boolean isCorrectPin(String cardNo, String pinNo) {
		List<Card> cards = getCard(cardNo);
		if (cards != null && cards.get(0).getPin().equals(pinNo)) {
			return true;
		}
		return false;
	}

	public String getCustName(String cardNo) {
		List<Card> cards = getCard(cardNo);
		if (cards != null) {
			return cards.get(0).getCustomer().getCustName();
		}
		return null;
	}

	public String getCardBalance(String cardNo) {
		List<Card> cards = getCard(cardNo);
		if (cards != null) {
			return cards.get(0).getBalance();
		}
		return null;
	}

	public String getOldPin(String cardNo) {
		List<Card> cards = getCard(cardNo);
		if (cards != null) {
			return cards.get(0).getPin();
		}
		return null;
	}
}