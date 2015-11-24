package com.eliteams.quick4j.web.model;

import java.io.Serializable;

/**
 * 基本信息
 * @author spark
 *
 */
public class BasicInfoModel implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5839938166241883493L;
	/**
	 * 
	 */
	private String basic_casename;
	private String basic_casetype;
	private String basic_content;
	private String basic_createname;
	
	
	
	public String getBasic_casename() {
		return basic_casename;
	}
	public void setBasic_casename(String basic_casename) {
		this.basic_casename = basic_casename;
	}
	public String getBasic_casetype() {
		return basic_casetype;
	}
	public void setBasic_casetype(String basic_casetype) {
		this.basic_casetype = basic_casetype;
	}
	public String getBasic_content() {
		return basic_content;
	}
	public void setBasic_content(String basic_content) {
		this.basic_content = basic_content;
	}
	public String getBasic_createname() {
		return basic_createname;
	}
	public void setBasic_createname(String basic_createname) {
		this.basic_createname = basic_createname;
	}
	@Override
	public String toString() {
		return "CaseModel [basic_casename=" + basic_casename
				+ ", basic_casetype=" + basic_casetype + ", basic_content="
				+ basic_content + ", basic_createname=" + basic_createname;
	}
	
	

}
