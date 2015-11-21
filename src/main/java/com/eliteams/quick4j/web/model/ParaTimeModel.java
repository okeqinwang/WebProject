package com.eliteams.quick4j.web.model;

import java.io.Serializable;

public class ParaTimeModel implements Serializable {
	


	private static final long serialVersionUID = -5917894648112435383L;
	
	
	private String area_id;
	private String  st_date;
	private String  st_time;
	private String  episode;
	private String  ed_date;
	
	
	
	
	public ParaTimeModel(String area_id, String st_date, String st_time,
			String episode, String ed_date) {
		super();
		this.area_id = area_id;
		this.st_date = st_date;
		this.st_time = st_time;
		this.episode = episode;
		this.ed_date = ed_date;
	}




	public ParaTimeModel() {
		super();
	}


	public String getArea_id() {
		return area_id;
	}




	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}




	public String getSt_date() {
		return st_date;
	}




	public void setSt_date(String st_date) {
		this.st_date = st_date;
	}




	public String getSt_time() {
		return st_time;
	}




	public void setSt_time(String st_time) {
		this.st_time = st_time;
	}




	public String getEpisode() {
		return episode;
	}




	public void setEpisode(String episode) {
		this.episode = episode;
	}




	public String getEd_date() {
		return ed_date;
	}




	public void setEd_date(String ed_date) {
		this.ed_date = ed_date;
	}




	@Override
	public String toString() {
		return "ParaTimeModel [area_id=" + area_id + ", st_date=" + st_date
				+ ", st_time=" + st_time + ", episode=" + episode
				+ ", ed_date=" + ed_date + "]";
	}
	
	

}
