package com.eliteams.quick4j.web.model;

import java.io.Serializable;

public class AreaModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6195153886438062700L;
	/**
	 * 
	 */
	private String  area_in;    //嵌套区域
	private String  area_simi; // 模拟区域
	
	private EmissionModel emission;
	private ParamModel param;
	private ParaTimeModel paratime;
	private WeatherFilePath wfp;
	
	
	
	
	public ParaTimeModel getParatime() {
		return paratime;
	}
	public void setParatime(ParaTimeModel paratime) {
		this.paratime = paratime;
	}
	public WeatherFilePath getWfp() {
		return wfp;
	}
	public void setWfp(WeatherFilePath wfp) {
		this.wfp = wfp;
	}
	public AreaModel(String area_in, String area_simi, EmissionModel emission,
			ParamModel param, ParaTimeModel paratime, WeatherFilePath wfp) {
		super();
		this.area_in = area_in;
		this.area_simi = area_simi;
		this.emission = emission;
		this.param = param;
		this.paratime = paratime;
		this.wfp = wfp;
	}
	public EmissionModel getEmission() {
		return emission;
	}
	public void setEmission(EmissionModel emission) {
		this.emission = emission;
	}
	public ParamModel getParam() {
		return param;
	}
	public void setParam(ParamModel param) {
		this.param = param;
	}
	public String getArea_in() {
		return area_in;
	}
	public void setArea_in(String area_in) {
		this.area_in = area_in;
	}
	public String getArea_simi() {
		return area_simi;
	}
	public void setArea_simi(String area_simi) {
		this.area_simi = area_simi;
	}
	public AreaModel(String area_in, String area_simi) {
		super();
		this.area_in = area_in;
		this.area_simi = area_simi;
	}
	
	public AreaModel() {
		super();
		
	}
	@Override
	public String toString() {
		return "AreaModel [area_in=" + area_in + ", area_simi=" + area_simi
				+ "]";
	}

	
}
