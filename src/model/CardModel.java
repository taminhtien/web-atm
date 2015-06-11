package model;



import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import entities.Card;

public class CardModel {

	public Card getCard(String cardNo) {
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();
		Card card = null;
		try {
			session.getTransaction().begin();

			Criteria crit = session.createCriteria(Card.class);
			crit.add(Restrictions.eq("cardNo", cardNo));
			card = (Card) crit.uniqueResult();
			
			if (card != null) {
				session.getTransaction().commit();
				return card;
			}
			session.getTransaction().commit();

		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return card;
	}

	public boolean isExistCard(String cardNo) {
		Card card = getCard(cardNo);
		if (card != null) {
			return true;
		}
		return false;
	}

	public boolean isCorrectPin(String cardNo, String pinNo) {
		Card card = getCard(cardNo);
		if (card != null && card.getPin().equals(pinNo)) {
			return true;
		}
		return false;
	}

	public String getCustName(String cardNo) {
		Card card = getCard(cardNo);
		if (card != null) {
			return card.getCustomer().getCustName();
		}
		return null;
	}

	public Long getCardBalance(String cardNo) {
		Card card = getCard(cardNo);
		if (card != null) {
			return card.getBalance();
		}
		return null;
	}

	public String getPin(String cardNo) {
		Card card = getCard(cardNo);
		if (card != null) {
			return card.getPin();
		}
		return null;
	}

	public boolean updatePin(String cardNo, String newPin) {
		Card card = getCard(cardNo);
		card.setPin(newPin);

		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();
		try {
			session.getTransaction().begin();
			session.update(card);
			session.flush();
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return false;
	}

	public boolean updateBalance(String cardNo, long l) {
		Card card = getCard(cardNo);
		card.setBalance(l);

		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();
		try {
			session.getTransaction().begin();
			session.update(card);
			session.flush();
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return false;
	}
}