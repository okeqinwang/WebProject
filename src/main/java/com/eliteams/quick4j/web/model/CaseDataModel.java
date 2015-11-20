package com.eliteams.quick4j.web.model;

import java.io.Serializable;

public class CaseDataModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6248446556138909736L;
	private String id;
	private String case_name;
	private String case_type;
	private String abbreviation;
	private String creator;
	private String description;
	private String created_time;
	private String lastmodifiedby;
	private String lastmodifiedat;
	private String base_year;
	private String st_date;
	private String ed_date;
	private String episode;
	private String st_time;
	private String run_status;
	private String domain_group;
	private String domain;
	private String domain_num;
	private String aqm_type;
	private String sp_type;
	private String ae_type;
	private String run_ar;
	private String run_pt;
	private String run_megan;
	private String run_superregion;
	private String run_ar_layer;
	private String run_pt_layer;
	private String run_src;
	private String merge_all;
	private String itm_status;
	private String arinv_inventory;
	private String ptinv_inventory;
	private String temporal_ref;
	private String spatial_ref;
	private String chemical_ref;
	private String megan_eflai;
	private String megan_pftf;
	private String scenario_file;
	private String metpath;
	private String grid_cro_2d;
	private String grid_cro_3d;
	private String met_cro_2d;
	private String met_cro_3d;
	private String met_dot_3d;
	private String laynum;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCase_name() {
		return case_name;
	}
	public void setCase_name(String case_name) {
		this.case_name = case_name;
	}
	public String getCase_type() {
		return case_type;
	}
	public void setCase_type(String case_type) {
		this.case_type = case_type;
	}
	public String getAbbreviation() {
		return abbreviation;
	}
	public void setAbbreviation(String abbreviation) {
		this.abbreviation = abbreviation;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getLastmodifiedby() {
		return lastmodifiedby;
	}
	public void setLastmodifiedby(String lastmodifiedby) {
		this.lastmodifiedby = lastmodifiedby;
	}
	public String getLastmodifiedat() {
		return lastmodifiedat;
	}
	public void setLastmodifiedat(String lastmodifiedat) {
		this.lastmodifiedat = lastmodifiedat;
	}
	public String getBase_year() {
		return base_year;
	}
	public void setBase_year(String base_year) {
		this.base_year = base_year;
	}
	public String getSt_date() {
		return st_date;
	}
	public void setSt_date(String st_date) {
		this.st_date = st_date;
	}
	public String getEd_date() {
		return ed_date;
	}
	public void setEd_date(String ed_date) {
		this.ed_date = ed_date;
	}
	public String getEpisode() {
		return episode;
	}
	public void setEpisode(String episode) {
		this.episode = episode;
	}
	public String getSt_time() {
		return st_time;
	}
	public void setSt_time(String st_time) {
		this.st_time = st_time;
	}
	public String getRun_status() {
		return run_status;
	}
	public void setRun_status(String run_status) {
		this.run_status = run_status;
	}
	public String getDomain_group() {
		return domain_group;
	}
	public void setDomain_group(String domain_group) {
		this.domain_group = domain_group;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getDomain_num() {
		return domain_num;
	}
	public void setDomain_num(String domain_num) {
		this.domain_num = domain_num;
	}
	public String getAqm_type() {
		return aqm_type;
	}
	public void setAqm_type(String aqm_type) {
		this.aqm_type = aqm_type;
	}
	public String getSp_type() {
		return sp_type;
	}
	public void setSp_type(String sp_type) {
		this.sp_type = sp_type;
	}
	public String getAe_type() {
		return ae_type;
	}
	public void setAe_type(String ae_type) {
		this.ae_type = ae_type;
	}
	public String getRun_ar() {
		return run_ar;
	}
	public void setRun_ar(String run_ar) {
		this.run_ar = run_ar;
	}
	public String getRun_pt() {
		return run_pt;
	}
	public void setRun_pt(String run_pt) {
		this.run_pt = run_pt;
	}
	public String getRun_megan() {
		return run_megan;
	}
	public void setRun_megan(String run_megan) {
		this.run_megan = run_megan;
	}
	public String getRun_superregion() {
		return run_superregion;
	}
	public void setRun_superregion(String run_superregion) {
		this.run_superregion = run_superregion;
	}
	public String getRun_ar_layer() {
		return run_ar_layer;
	}
	public void setRun_ar_layer(String run_ar_layer) {
		this.run_ar_layer = run_ar_layer;
	}
	public String getRun_pt_layer() {
		return run_pt_layer;
	}
	public void setRun_pt_layer(String run_pt_layer) {
		this.run_pt_layer = run_pt_layer;
	}
	public String getRun_src() {
		return run_src;
	}
	public void setRun_src(String run_src) {
		this.run_src = run_src;
	}
	public String getMerge_all() {
		return merge_all;
	}
	public void setMerge_all(String merge_all) {
		this.merge_all = merge_all;
	}
	public String getItm_status() {
		return itm_status;
	}
	public void setItm_status(String itm_status) {
		this.itm_status = itm_status;
	}
	public String getArinv_inventory() {
		return arinv_inventory;
	}
	public void setArinv_inventory(String arinv_inventory) {
		this.arinv_inventory = arinv_inventory;
	}
	public String getPtinv_inventory() {
		return ptinv_inventory;
	}
	public void setPtinv_inventory(String ptinv_inventory) {
		this.ptinv_inventory = ptinv_inventory;
	}
	public String getTemporal_ref() {
		return temporal_ref;
	}
	public void setTemporal_ref(String temporal_ref) {
		this.temporal_ref = temporal_ref;
	}
	public String getSpatial_ref() {
		return spatial_ref;
	}
	public void setSpatial_ref(String spatial_ref) {
		this.spatial_ref = spatial_ref;
	}
	public String getChemical_ref() {
		return chemical_ref;
	}
	public void setChemical_ref(String chemical_ref) {
		this.chemical_ref = chemical_ref;
	}
	public String getMegan_eflai() {
		return megan_eflai;
	}
	public void setMegan_eflai(String megan_eflai) {
		this.megan_eflai = megan_eflai;
	}
	public String getMegan_pftf() {
		return megan_pftf;
	}
	public void setMegan_pftf(String megan_pftf) {
		this.megan_pftf = megan_pftf;
	}
	public String getScenario_file() {
		return scenario_file;
	}
	public void setScenario_file(String scenario_file) {
		this.scenario_file = scenario_file;
	}
	public String getMetpath() {
		return metpath;
	}
	public void setMetpath(String metpath) {
		this.metpath = metpath;
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
	public String getLaynum() {
		return laynum;
	}
	public void setLaynum(String laynum) {
		this.laynum = laynum;
	}
	public CaseDataModel(String id, String case_name, String case_type,
			String abbreviation, String creator, String description,
			String created_time, String lastmodifiedby, String lastmodifiedat,
			String base_year, String st_date, String ed_date, String episode,
			String st_time, String run_status, String domain_group,
			String domain, String domain_num, String aqm_type, String sp_type,
			String ae_type, String run_ar, String run_pt, String run_megan,
			String run_superregion, String run_ar_layer, String run_pt_layer,
			String run_src, String merge_all, String itm_status,
			String arinv_inventory, String ptinv_inventory,
			String temporal_ref, String spatial_ref, String chemical_ref,
			String megan_eflai, String megan_pftf, String scenario_file,
			String metpath, String grid_cro_2d, String grid_cro_3d,
			String met_cro_2d, String met_cro_3d, String met_dot_3d,
			String laynum) {
		super();
		this.id = id;
		this.case_name = case_name;
		this.case_type = case_type;
		this.abbreviation = abbreviation;
		this.creator = creator;
		this.description = description;
		this.created_time = created_time;
		this.lastmodifiedby = lastmodifiedby;
		this.lastmodifiedat = lastmodifiedat;
		this.base_year = base_year;
		this.st_date = st_date;
		this.ed_date = ed_date;
		this.episode = episode;
		this.st_time = st_time;
		this.run_status = run_status;
		this.domain_group = domain_group;
		this.domain = domain;
		this.domain_num = domain_num;
		this.aqm_type = aqm_type;
		this.sp_type = sp_type;
		this.ae_type = ae_type;
		this.run_ar = run_ar;
		this.run_pt = run_pt;
		this.run_megan = run_megan;
		this.run_superregion = run_superregion;
		this.run_ar_layer = run_ar_layer;
		this.run_pt_layer = run_pt_layer;
		this.run_src = run_src;
		this.merge_all = merge_all;
		this.itm_status = itm_status;
		this.arinv_inventory = arinv_inventory;
		this.ptinv_inventory = ptinv_inventory;
		this.temporal_ref = temporal_ref;
		this.spatial_ref = spatial_ref;
		this.chemical_ref = chemical_ref;
		this.megan_eflai = megan_eflai;
		this.megan_pftf = megan_pftf;
		this.scenario_file = scenario_file;
		this.metpath = metpath;
		this.grid_cro_2d = grid_cro_2d;
		this.grid_cro_3d = grid_cro_3d;
		this.met_cro_2d = met_cro_2d;
		this.met_cro_3d = met_cro_3d;
		this.met_dot_3d = met_dot_3d;
		this.laynum = laynum;
	}
	public CaseDataModel() {
		super();
	}
	@Override
	public String toString() {
		return "CaseDataModel [id=" + id + ", case_name=" + case_name
				+ ", case_type=" + case_type + ", abbreviation=" + abbreviation
				+ ", creator=" + creator + ", description=" + description
				+ ", created_time=" + created_time + ", lastmodifiedby="
				+ lastmodifiedby + ", lastmodifiedat=" + lastmodifiedat
				+ ", base_year=" + base_year + ", st_date=" + st_date
				+ ", ed_date=" + ed_date + ", episode=" + episode
				+ ", st_time=" + st_time + ", run_status=" + run_status
				+ ", domain_group=" + domain_group + ", domain=" + domain
				+ ", domain_num=" + domain_num + ", aqm_type=" + aqm_type
				+ ", sp_type=" + sp_type + ", ae_type=" + ae_type + ", run_ar="
				+ run_ar + ", run_pt=" + run_pt + ", run_megan=" + run_megan
				+ ", run_superregion=" + run_superregion + ", run_ar_layer="
				+ run_ar_layer + ", run_pt_layer=" + run_pt_layer
				+ ", run_src=" + run_src + ", merge_all=" + merge_all
				+ ", itm_status=" + itm_status + ", arinv_inventory="
				+ arinv_inventory + ", ptinv_inventory=" + ptinv_inventory
				+ ", temporal_ref=" + temporal_ref + ", spatial_ref="
				+ spatial_ref + ", chemical_ref=" + chemical_ref
				+ ", megan_eflai=" + megan_eflai + ", megan_pftf=" + megan_pftf
				+ ", scenario_file=" + scenario_file + ", metpath=" + metpath
				+ ", grid_cro_2d=" + grid_cro_2d + ", grid_cro_3d="
				+ grid_cro_3d + ", met_cro_2d=" + met_cro_2d + ", met_cro_3d="
				+ met_cro_3d + ", met_dot_3d=" + met_dot_3d + ", laynum="
				+ laynum + "]";
	}
	
	
	

}
