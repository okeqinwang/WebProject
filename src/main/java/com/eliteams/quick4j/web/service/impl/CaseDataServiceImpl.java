package com.eliteams.quick4j.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.eliteams.quick4j.core.generic.GenericDao;
import com.eliteams.quick4j.core.generic.GenericServiceImpl;
import com.eliteams.quick4j.web.dao.CaseDataMapper;
import com.eliteams.quick4j.web.model.AreaModel;
import com.eliteams.quick4j.web.model.BasicInfoModel;
import com.eliteams.quick4j.web.model.CaseDataModel;
import com.eliteams.quick4j.web.model.CaseDataSessionModel;
import com.eliteams.quick4j.web.model.ParaTimeModel;
import com.eliteams.quick4j.web.model.ParamModel;
import com.eliteams.quick4j.web.model.SceneModel;
import com.eliteams.quick4j.web.model.WeatherFilePath;
import com.eliteams.quick4j.web.service.CaseDataService;

/**
 * 用户Service实现类
 *
 * @author StarZou
 * @since 2014年7月5日 上午11:54:24
 */
@Service
public class CaseDataServiceImpl extends GenericServiceImpl<CaseDataModel, Long> implements CaseDataService {

    @Resource
    private CaseDataMapper casedataMapper;

	@Override
	public GenericDao<CaseDataModel, Long> getDao() {
		// TODO Auto-generated method stub
		return casedataMapper;
	}

	@Override
	public int insert(CaseDataModel model) {
		// TODO Auto-generated method stub
		return casedataMapper.insert(model);
				
	}

	@Override
	public int update(CaseDataModel model) {
		// TODO Auto-generated method stub
		return casedataMapper.updateByPrimaryKey(model);
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return casedataMapper.deleteByPrimaryKey(id);
	}

	@Override
	public CaseDataModel selectById(Long id) {
		// TODO Auto-generated method stub
		return casedataMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<ParamModel> initParamModel(String params,String areas) {
		List<ParamModel> res = new ArrayList<ParamModel>();
		String []  data = params.split(",");
		String []  projects = areas.split(",");
		int size = data.length/7;
		if(size!=projects.length){
			System.out.println("pramas occure errors ");
			return null;
		}
		int j=0;
		for(int i=0;i<size;i++){
			j= 7*i;
			ParamModel  tmp = new ParamModel(projects[i],data[j],data[j+1],data[j+2],data[j+3],data[j+4],data[j+5],data[j+6]);
			System.out.println(tmp.toString());
			res.add(tmp);
		}
		return res;
	}
	
	public List<ParaTimeModel> initParaTimeModel(String params,String areas){
		List<ParaTimeModel> res = new ArrayList<ParaTimeModel>();
		String []  data = params.split(",");
		String []  projects = areas.split(",");
		
		System.out.println("project"+ projects.length);
		System.out.println("data"+data.length);
		int size = data.length/4;
		if(size!=projects.length){
			System.out.println("pramas occure errors ");
			return null;
		}
		int j=0;
		for(int i=0;i<size;i++){
			j= 4*i;
//			ParamModel  tmp = new ParamModel(projects[i],data[j],data[j+1],data[j+2],data[j+3],data[j+4],data[j+5],data[j+6]);
			ParaTimeModel tmp = new ParaTimeModel(projects[i],data[j],data[j+1],data[j+2],data[j+3]);
			System.out.println(tmp.toString());
			res.add(tmp);
		}
		return res;
	}

	@Override
	public boolean saveCaseData() {
		
//		this.assemCaseDataModel(null);
		return false;
	}
	
	

	@Override
	public int checkCaseDataSession(CaseDataSessionModel sm) {
		
		if(sm !=null && sm.getArealist()!=null && sm.getArealist().size()>0 && sm.getBasic()!=null && sm.getScene()!=null){
			return 0;
		}
		return -1;
	}

	@Override
	public List<CaseDataModel> assemCaseDataModel(CaseDataSessionModel sm,List<ParaTimeModel > ptm,List<WeatherFilePath> wfp) {
			
		List<AreaModel> arealist = sm.getArealist();
		
		BasicInfoModel basic = sm.getBasic();
		SceneModel scene =sm.getScene();
		List<CaseDataModel> res = new ArrayList<CaseDataModel>(arealist.size());
		for(int i=0;i<arealist.size();i++){
			CaseDataModel  cdm = new CaseDataModel(basic, arealist.get(i), scene,ptm.get(i),wfp.get(i));
			res.add(cdm);
			System.out.println(cdm.toString());
		}
		return res;
	}
	
	
	
	

}
