package com.eliteams.quick4j.web.model;

import java.io.Serializable;

public class SceneModel  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 627649807860499814L;
	private String sn_pf_scene; //排放场景
	private String sn_pf_area;   //地区
	private String sn_pf_type;    //排放源类别
	public String getSn_pf_scene() {
		return sn_pf_scene;
	}
	public void setSn_pf_scene(String sn_pf_scene) {
		this.sn_pf_scene = sn_pf_scene;
	}
	public String getSn_pf_area() {
		return sn_pf_area;
	}
	public void setSn_pf_area(String sn_pf_area) {
		this.sn_pf_area = sn_pf_area;
	}
	public String getSn_pf_type() {
		return sn_pf_type;
	}
	public void setSn_pf_type(String sn_pf_type) {
		this.sn_pf_type = sn_pf_type;
	}
	public SceneModel() {
		super();
	}
	@Override
	public String toString() {
		return "SceneModel [sn_pf_scene=" + sn_pf_scene + ", sn_pf_area="
				+ sn_pf_area + ", sn_pf_type=" + sn_pf_type + "]";
	}
	
	

}
