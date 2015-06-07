package controller;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import model.CardModel;

public class CardController extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	private CardModel cardModel = new CardModel();
	private String cardNo;
	private String pinNo;
	private Map<String, Object> sessionMap;

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public String getPinNo() {
		return pinNo;
	}

	public void setPinNo(String pinNo) {
		this.pinNo = pinNo;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String loadEnteringCardScreen() {
		return SUCCESS;
	}

	/**
	 * Kiểm tra sự tồn tại của card
	 */
	public String isExistCard() {
		if (!cardModel.isExistCard(cardNo)) {
			return ERROR;
		} else {
			sessionMap.put("CardNo", cardNo);
			return SUCCESS;
		}
	}

	/**
	 * Kiểm tra mã PIN có đúng không
	 */
	public String isCorrectPin() {
		if (!cardModel.isCorrectPin(cardNo, pinNo)) {
			return ERROR;
		} else {
			System.out.println("Dung ma pin");
			return SUCCESS;
		}
	}
}
