package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "card", catalog = "atm")
public class Card implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private String cardNo;
	private Customer customer;
	private String pin;
	private Long balance;

	public Card() {
	}
	
	public Card(Card c) {
		this.cardNo = c.cardNo;
		this.customer = c.customer;
		this.pin = c.pin;
		this.balance = c.balance;
	}

	public Card(String cardNo, Customer customer, String pin, Long balance) {
		this.cardNo = cardNo;
		this.customer = customer;
		this.pin = pin;
		this.balance = balance;
	}

	@Id
	@Column(name = "CardNo", unique = true, nullable = false, length = 10)
	public String getCardNo() {
		return this.cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CustID", nullable = false)
	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@Column(name = "PIN", nullable = false, length = 32)
	public String getPin() {
		return this.pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	@Column(name = "Balance", nullable = false, length = 16777215)
	public Long getBalance() {
		return this.balance;
	}

	public void setBalance(Long balance) {
		this.balance = balance;
	}
}
