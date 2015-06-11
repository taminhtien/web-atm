package entities;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "customer", catalog = "atm")
public class Customer implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer custId;
	private String custName;
	private String email;
	private String address;
	private Set<Card> cards = new HashSet<Card>(0);

	public Customer() {
	}

	public Customer(String custName, String email, String address) {
		this.custName = custName;
		this.email = email;
		this.address = address;
	}

	public Customer(String custName, String email, String address,
			Set<Card> cards) {
		this.custName = custName;
		this.email = email;
		this.address = address;
		this.cards = cards;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "CustID", unique = true, nullable = false)
	public Integer getCustId() {
		return this.custId;
	}

	public void setCustId(Integer custId) {
		this.custId = custId;
	}

	@Column(name = "CustName", nullable = false)
	public String getCustName() {
		return this.custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	@Column(name = "Email", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "Address", nullable = false)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
	public Set<Card> getCards() {
		return this.cards;
	}

	public void setCards(Set<Card> cards) {
		this.cards = cards;
	}
}
