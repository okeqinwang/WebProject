package com.eliteams.quick4j.web.model;

import java.io.Serializable;

public class TaskModel  implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7560633414371054778L;
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
