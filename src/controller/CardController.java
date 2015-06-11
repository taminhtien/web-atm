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
	private Long balance;
	private String oldPin;
	private String newPin;
	private Map<String, Object> sessionMap;

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public String getNewPin() {
		return newPin;
	}

	public void setNewPin(String newPin) {
		this.newPin = newPin;
	}

	public String getOldPin() {
		return oldPin;
	}

	public void setOldPin(String oldPin) {
		this.oldPin = oldPin;
	}

	public Long getBalance() {
		return balance;
	}

	public void setBalance(Long balance) {
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
			// Put cardNo to session
			sessionMap.put("CardNo", cardNo);

			// Get Customer name and put it to session
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
			sessionMap.put("logged", true);
			return SUCCESS;
		}
	}

	/**
	 * Load check balance screen when user press check balance function
	 */

	public String loadCheckBalanceScreen() {
		if (null != sessionMap.get("logged")) {
			balance = cardModel.getCardBalance(sessionMap.get("CardNo").toString());
			return SUCCESS;
		}
		return ERROR;
	}

	/**
	 * Load change pin screen specifically entering old pin screen
	 */
	public String loadChangePinScreen() {
		if (null != sessionMap.get("logged")) {
			return SUCCESS;
		}
		return ERROR;
	}

	/**
	 * Check valid old pin
	 */

	public String checkOldPin() {
		String cardNo = sessionMap.get("CardNo").toString();
		if (cardNo != null) {
			String pinNo = cardModel.getPin(cardNo);
			if (pinNo != null && oldPin.equals(pinNo)) {
				return SUCCESS;
			}
		}
		return ERROR;
	}

	/**
	 * Change Pin
	 */

	public String changePin() {
		String cardNo = sessionMap.get("CardNo").toString();
		if (cardNo != null) {
			boolean updatePinNo = cardModel.updatePin(cardNo, newPin);
			if (updatePinNo == true) {
				return SUCCESS;
			}
		}
		return ERROR;
	}
	
	public String exit() {
		sessionMap.remove("logged");
		return SUCCESS;
	}
	
	/**
	 * Load withdraw screen specifically entering amount screen
	 */
	public String loadWithdrawScreen() {
		if (null != sessionMap.get("logged")) {
			return SUCCESS;
		}
		return ERROR;
	}
	
	public String checkAmount() {
		return SUCCESS;
	}
}