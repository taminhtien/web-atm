package controller;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.CardModel;
import entities.Card;

public class CardController extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private List<Card> listCard = new ArrayList<Card>();
	private Card card = new Card();
	private CardModel cardModel = new CardModel();
	private String cardNo;

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public Card getCard() {
		return card;
	}

	public void setCard(Card card) {
		this.card = card;
	}

	public List<Card> getListCard() {
		return listCard;
	}

	public void setListCard(List<Card> listCard) {
		this.listCard = listCard;
	}

	@Override
	public String execute() throws Exception {
		this.listCard = cardModel.getListCard();
		return SUCCESS;
	}

	public String loadEnteringCardScreen() {
		return SUCCESS;
	}

	/**
	 * Kiểm tra sự tồn tại của card
	 */
	public String isExistCard() {
		this.card = cardModel.getCard(cardNo);
		System.out.println(card.getCardNo());
		System.out.println(card.getBalance());
		System.out.println(card.getPin());
		System.out.println(card.getCustomer().getCustName());
		if (this.card == null) {
			return "FAILED";
		} else {
			return SUCCESS;
		}
	}
}
