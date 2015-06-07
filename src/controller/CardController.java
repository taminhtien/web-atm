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
	private String balance;
	private Map<String, Object> sessionMap;

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
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
	 * Check the existence of cardNo
	 */
	public String isExistCard() {
		if (!cardModel.isExistCard(cardNo)) {
			return ERROR;
		} else {
			sessionMap.put("CardNo", cardNo);
			/**
			 * Get Customer name and put it to session
			 */
			String custName = cardModel.getCustName(cardNo);
			sessionMap.put("CustName", custName);
			return SUCCESS;
		}
	}

	/**
	 * Validate pin
	 */
	public String isCorrectPin() {
		if (!cardModel.isCorrectPin(sessionMap.get("CardNo").toString(), pinNo)) {
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	/**
	 * Load check balance screen when user press check balance function
	 */

	public String loadCheckBalanceScreen() {
		balance = cardModel.getCardBalance(sessionMap.get("CardNo").toString());
		return SUCCESS;
	}
}
