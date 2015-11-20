package com.eliteams.quick4j.web.model;

import java.io.Serializable;

/**
 * 排放源输入
 * @author spark
 *
 */
public class EmissionModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -691652906380787653L;

	private String  area_id;
	
	private String pf_qd;   //排放清单
	private String pf_gxl;  // 大气排放贡献率
	
	private String sj_plan; //时间分配方案
	private String sj_pf_type; //排放类别
	
	private String kj_plan; //空间分配方案
	private String kj_area; //区域
	private String kj_code; //空间分配代码
	
	private String wz_plan;  //大气化学物种分配方案
	private String wz_jz;       // 化学机制
	private String wz_wrw;  // 污染物
	private String wz_type;  //排放源类别
	
	private String try_pft;
	private String try_ef_lai;
	private String try_show;  //预览选项
	public String getArea_id() {
		return area_id;
	}
	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}
	public String getPf_qd() {
		return pf_qd;
	}
	public void setPf_qd(String pf_qd) {
		this.pf_qd = pf_qd;
	}
	public String getPf_gxl() {
		return pf_gxl;
	}
	public void setPf_gxl(String pf_gxl) {
		this.pf_gxl = pf_gxl;
	}
	public String getSj_plan() {
		return sj_plan;
	}
	public void setSj_plan(String sj_plan) {
		this.sj_plan = sj_plan;
	}
	public String getSj_pf_type() {
		return sj_pf_type;
	}
	public void setSj_pf_type(String sj_pf_type) {
		this.sj_pf_type = sj_pf_type;
	}
	public String getKj_plan() {
		return kj_plan;
	}
	public void setKj_plan(String kj_plan) {
		this.kj_plan = kj_plan;
	}
	public String getKj_area() {
		return kj_area;
	}
	public void setKj_area(String kj_area) {
		this.kj_area = kj_area;
	}
	public String getKj_code() {
		return kj_code;
	}
	public void setKj_code(String kj_code) {
		this.kj_code = kj_code;
	}
	public String getWz_plan() {
		return wz_plan;
	}
	public void setWz_plan(String wz_plan) {
		this.wz_plan = wz_plan;
	}
	public String getWz_jz() {
		return wz_jz;
	}
	public void setWz_jz(String wz_jz) {
		this.wz_jz = wz_jz;
	}
	public String getWz_wrw() {
		return wz_wrw;
	}
	public void setWz_wrw(String wz_wrw) {
		this.wz_wrw = wz_wrw;
	}
	public String getWz_type() {
		return wz_type;
	}
	public void setWz_type(String wz_type) {
		this.wz_type = wz_type;
	}
	public String getTry_pft() {
		return try_pft;
	}
	public void setTry_pft(String try_pft) {
		this.try_pft = try_pft;
	}
	public String getTry_ef_lai() {
		return try_ef_lai;
	}
	public void setTry_ef_lai(String try_ef_lai) {
		this.try_ef_lai = try_ef_lai;
	}
	public String getTry_show() {
		return try_show;
	}
	public void setTry_show(String try_show) {
		this.try_show = try_show;
	}
	public EmissionModel() {
		super();
	}
	@Override
	public String toString() {
		return "EmissionModel [area_id=" + area_id + ", pf_qd=" + pf_qd
				+ ", pf_gxl=" + pf_gxl + ", sj_plan=" + sj_plan
				+ ", sj_pf_type=" + sj_pf_type + ", kj_plan=" + kj_plan
				+ ", kj_area=" + kj_area + ", kj_code=" + kj_code
				+ ", wz_plan=" + wz_plan + ", wz_jz=" + wz_jz + ", wz_wrw="
				+ wz_wrw + ", wz_type=" + wz_type + ", try_pft=" + try_pft
				+ ", try_ef_lai=" + try_ef_lai + ", try_show=" + try_show + "]";
	}
	
	
	
	
	
	
	
}
