package controller;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.CardModel;
import entities.Card;

public class CardController extends ActionSupport {
	private List<Card> listCard = new ArrayList<Card>();
	private CardModel cardModel = new CardModel();
	
	public List<Card> getListCard() {
		return listCard;
	}
	public void setListCard(List<Card> listCard) {
		this.listCard = listCard;
	}
	@Override
	public String execute() throws Exception {
		this.listCard = cardModel.findAll();
		return SUCCESS;
	}
	
	
}
