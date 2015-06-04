package controller;

import java.util.ArrayList;
import java.util.List;

import model.AtmModel;

import com.opensymphony.xwork2.ActionSupport;

import entities.Atm;

public class AtmController extends ActionSupport {
	private List<Atm> listAtm = new ArrayList<Atm>();
	private AtmModel atmModel = new AtmModel();

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
