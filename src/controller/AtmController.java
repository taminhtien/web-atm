package controller;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Atm;

public class AtmController extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Atm> listAtm = new ArrayList<Atm>();

	public List<Atm> getListAtm() {
		return listAtm;
	}

	public void setListAtm(List<Atm> listAtm) {
		this.listAtm = listAtm;
	}

	@Override
	public String execute() throws Exception {
		//this.listAtm = atmModel.findAll();
		return SUCCESS;
	}
}
