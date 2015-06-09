package controller;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Log;

public class LogController extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Log> listLog = new ArrayList<Log>();

	public List<Log> getListLog() {
		return listLog;
	}

	public void setListLog(List<Log> listLog) {
		this.listLog = listLog;
	}

	@Override
	public String execute() throws Exception {
		//this.listLog = this.logModel.findAll();
		return SUCCESS;
	}
}
