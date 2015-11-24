package com.eliteams.quick4j.web.model;

import java.io.Serializable;

public class WeatherFilePath implements Serializable {
	
	private static final long serialVersionUID = -5842235286940717753L;
	
	private String area_id;
	private String grid_cro_2d;
	private String  grid_cro_3d;
	private String  met_cro_2d;
	private String  met_cro_3d;
	private String  met_dot_3d;
	
	
	
	
	public WeatherFilePath() {
		super();
	}



	public String getGrid_cro_3d() {
		return grid_cro_3d;
	}



	public void setGrid_cro_3d(String grid_cro_3d) {
		this.grid_cro_3d = grid_cro_3d;
	}











	public WeatherFilePath(String area_id, String grid_cro_2d,
			String grid_cro_3d, String met_cro_2d, String met_cro_3d,
			String met_dot_3d) {
		super();
		this.area_id = area_id;
		this.grid_cro_2d = grid_cro_2d;
		this.grid_cro_3d = grid_cro_3d;
		this.met_cro_2d = met_cro_2d;
		this.met_cro_3d = met_cro_3d;
		this.met_dot_3d = met_dot_3d;
	}






	public String getArea_id() {
		return area_id;
	}

	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}



	public String getGrid_cro_2d() {
		return grid_cro_2d;
	}
	public void setGrid_cro_2d(String grid_cro_2d) {
		this.grid_cro_2d = grid_cro_2d;
	}
	public String getMet_cro_2d() {
		return met_cro_2d;
	}
	public void setMet_cro_2d(String met_cro_2d) {
		this.met_cro_2d = met_cro_2d;
	}
	public String getMet_cro_3d() {
		return met_cro_3d;
	}
	public void setMet_cro_3d(String met_cro_3d) {
		this.met_cro_3d = met_cro_3d;
	}
	public String getMet_dot_3d() {
		return met_dot_3d;
	}
	public void setMet_dot_3d(String met_dot_3d) {
		this.met_dot_3d = met_dot_3d;
	}

	
	

}
