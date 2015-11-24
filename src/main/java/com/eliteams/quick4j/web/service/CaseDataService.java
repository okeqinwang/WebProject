package com.eliteams.quick4j.web.service;

import java.util.List;

import com.eliteams.quick4j.core.generic.GenericService;
import com.eliteams.quick4j.web.model.CaseDataModel;
import com.eliteams.quick4j.web.model.CaseDataSessionModel;
import com.eliteams.quick4j.web.model.ParaTimeModel;
import com.eliteams.quick4j.web.model.ParamModel;
import com.eliteams.quick4j.web.model.WeatherFilePath;

public   interface CaseDataService extends GenericService<CaseDataModel, Long> {

	public List<ParamModel>  initParamModel(String params,String areas);
	
	public List<ParaTimeModel> initParaTimeModel(String params,String areas);
	
	public int checkCaseDataSession(CaseDataSessionModel sm);
	
	public List<CaseDataModel> assemCaseDataModel(CaseDataSessionModel sm,List<ParaTimeModel > ptm,List<WeatherFilePath> wfp,List<ParamModel> para) ;
	
	public boolean saveCaseData(List<CaseDataModel> listcasemodel) ;
	
}
