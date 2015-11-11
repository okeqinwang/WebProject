package com.eliteams.quick4j.web.model;

public class ParamModel {
	private String p_area;
	private String p_run_pt;
	private String p_run_ar;
	private String p_run_megan;
	private String p_run_superregion;
	private String p_run_ar_layer;
	private String p_pt_layer;
	private String p_itm_status;
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
		super();
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
