package com.eliteams.quick4j.web.service;

import java.util.List;

import com.eliteams.quick4j.core.generic.GenericService;
import com.eliteams.quick4j.web.model.CaseDataModel;
import com.eliteams.quick4j.web.model.ParamModel;

public   interface CaseDataService extends GenericService<CaseDataModel, Long> {

	public List<ParamModel>  initParamModel(String params,String areas);
	
	public boolean saveCaseData();
	
}
