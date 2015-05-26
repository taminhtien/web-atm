package controller;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Customer;
import model.CustomerModel;

public class CustomerController extends ActionSupport {

	private List<Customer> listCustomer = new ArrayList<Customer>();
	private CustomerModel cusModel = new CustomerModel();

	public List<Customer> getListCustomer() {
		return listCustomer;
	}

	public void setListCustomer(List<Customer> listCustomer) {
		this.listCustomer = listCustomer;
	}

	@Override
	public String execute() throws Exception {
		this.listCustomer = this.cusModel.findAll();
		return SUCCESS;
	}

}
