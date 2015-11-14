package com.eliteams.quick4j.web.model;

public class TaskModel {
	
	private String stop;
	private String result;
	private long lastTimeFileSize;
	public String getStop() {
		return stop;
	}
	public void setStop(String stop) {
		this.stop = stop;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public long getLastTimeFileSize() {
		return lastTimeFileSize;
	}
	public void setLastTimeFileSize(long lastTimeFileSize) {
		this.lastTimeFileSize = lastTimeFileSize;
	}
	@Override
	public String toString() {
		return "TaskModel [stop=" + stop + ", result=" + result
				+ ", lastTimeFileSize=" + lastTimeFileSize + "]";
	}
	public TaskModel() {
		super();
	}
	
	
	

}
