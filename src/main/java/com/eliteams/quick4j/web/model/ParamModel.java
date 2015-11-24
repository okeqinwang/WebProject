package com.eliteams.quick4j.web.model;

import java.io.Serializable;

public class ParamModel implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7273739388902038649L;
	private String p_area;
	private String p_run_pt;
	private String p_run_ar;
	private String p_run_megan;
	private String p_run_superregion;
	private String p_run_ar_layer;
	private String p_pt_layer;
	private String p_itm_status;
	
	
	//气象路径 归入到参数模块
	private String  grid_cro_2d;
	private String  grid_cro_3d;
	private String  met_cro_2d;
	private String  met_cro_3d;
	private String  met_dot_3d;
	
	
	//时间参数归入到参数模块
	private String st_date;
	private String st_time;
	private String episode;
	private String ed_date;
	
	
	public String getP_area() {
		return p_area;
	}
	public void setP_area(String p_area) {
		this.p_area = p_area;
	}
	public String getP_run_pt() {
		return p_run_pt;
	}
	public void setP_run_pt(String p_run_pt) {
		this.p_run_pt = p_run_pt;
	}
	public String getP_run_ar() {
		return p_run_ar;
	}
	public void setP_run_ar(String p_run_ar) {
		this.p_run_ar = p_run_ar;
	}
	public String getP_run_megan() {
		return p_run_megan;
	}
	public void setP_run_megan(String p_run_megan) {
		this.p_run_megan = p_run_megan;
	}
	public String getP_run_superregion() {
		return p_run_superregion;
	}
	public void setP_run_superregion(String p_run_superregion) {
		this.p_run_superregion = p_run_superregion;
	}
	public String getP_run_ar_layer() {
		return p_run_ar_layer;
	}
	public void setP_run_ar_layer(String p_run_ar_layer) {
		this.p_run_ar_layer = p_run_ar_layer;
	}
	public String getP_pt_layer() {
		return p_pt_layer;
	}
	public void setP_pt_layer(String p_pt_layer) {
		this.p_pt_layer = p_pt_layer;
	}
	public String getP_itm_status() {
		return p_itm_status;
	}
	public void setP_itm_status(String p_itm_status) {
		this.p_itm_status = p_itm_status;
	}
	public ParamModel() {
	}
	
	public ParamModel(String p_area) {
		this.p_area = p_area;
	}
	
	
	public String getGrid_cro_2d() {
		return grid_cro_2d;
	}
	public void setGrid_cro_2d(String grid_cro_2d) {
		this.grid_cro_2d = grid_cro_2d;
	}
	public String getGrid_cro_3d() {
		return grid_cro_3d;
	}
	public void setGrid_cro_3d(String grid_cro_3d) {
		this.grid_cro_3d = grid_cro_3d;
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
	public ParamModel(String p_area, String p_run_pt, String p_run_ar,
			String p_run_megan, String p_run_superregion,
			String p_run_ar_layer, String p_pt_layer, String p_itm_status) {
		super();
		this.p_area = p_area;
		this.p_run_pt = p_run_pt;
		this.p_run_ar = p_run_ar;
		this.p_run_megan = p_run_megan;
		this.p_run_superregion = p_run_superregion;
		this.p_run_ar_layer = p_run_ar_layer;
		this.p_pt_layer = p_pt_layer;
		this.p_itm_status = p_itm_status;
	}
	@Override
	public String toString() {
		return "ParamModel [p_area=" + p_area + ", p_run_pt=" + p_run_pt
				+ ", p_run_ar=" + p_run_ar + ", p_run_megan=" + p_run_megan
				+ ", p_run_superregion=" + p_run_superregion
				+ ", p_run_ar_layer=" + p_run_ar_layer + ", p_pt_layer="
				+ p_pt_layer + ", p_itm_status=" + p_itm_status + "]";
	}
	
	

}
