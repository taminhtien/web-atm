package controller;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Customer;
import model.CustomerModel;

public class CustomerController extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private List<Customer> listCustomer = new ArrayList<Customer>();
	private CustomerModel cusModel = new CustomerModel();
	private Customer cust = new Customer();

	public Customer getCust() {
		return cust;
	}

	public void setCust(Customer cust) {
		this.cust = cust;
	}

	public List<Customer> getListCustomer() {
		return listCustomer;
	}

	public void setListCustomer(List<Customer> listCustomer) {
		this.listCustomer = listCustomer;
	}

	@Override
	public String execute() throws Exception {
		//this.listCustomer = this.cusModel.findAll();
		return SUCCESS;
	}

	public String add() {
		return SUCCESS;
	}

	public String addCustomer() {
		//this.cusModel.create(cust);
		//this.listCustomer = this.cusModel.findAll();
		return SUCCESS;
	}
}
