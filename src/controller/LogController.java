package controller;

import java.util.ArrayList;
import java.util.List;

import model.LogModel;

import com.opensymphony.xwork2.ActionSupport;

import entities.Log;

public class LogController extends ActionSupport {
	private List<Log> listLog = new ArrayList<Log>();
	private LogModel logModel = new LogModel();

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
