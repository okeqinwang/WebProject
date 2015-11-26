package com.eliteams.quick4j.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eliteams.quick4j.web.model.CaseDataModel;
import com.eliteams.quick4j.web.model.CaseDataSessionModel;
import com.eliteams.quick4j.web.model.ParaTimeModel;
import com.eliteams.quick4j.web.model.ParamModel;
import com.eliteams.quick4j.web.model.WeatherFilePath;
import com.eliteams.quick4j.web.service.CaseDataService;

@Controller
public class CaseManageController {

	@Resource
	private CaseDataService caseDataService;
	
	@RequestMapping("queryCaseByName")
	@ResponseBody
	public   Map<String,Object>  queryCaseByName(HttpServletRequest request,HttpSession session){
		Map<String, Object> msg = new HashMap<String, Object>();
		System.out.println("queryCaseByName...");
		msg.put("msg", "success");
		String casename = request.getParameter("casename");
		
		List<CaseDataModel> res = caseDataService.queryCaseByName(casename);
		
		//这里设置sm的值 
		if(res!=null && res.size()>0){
			int size = res.size();
			CaseDataSessionModel sm = caseDataService.caseData2SessionData(res);
			List<ParamModel> pmlist = new ArrayList<ParamModel>(size);
			List<ParaTimeModel > ptmlist = new ArrayList<ParaTimeModel>(size);
			
			for(CaseDataModel cdm : res){
				
				//注意。。//这里添加其他的值 需要补全。。
				
				ParamModel  para = new ParamModel();
//				para.setEd_date(ed_date);
//				para.set
				ParaTimeModel ptm = new ParaTimeModel();
				ptm.setEd_date(cdm.getEd_date());
				
				
				pmlist.add(para);
				ptmlist.add(ptm);
			}
			session.setAttribute("sm", sm);
			session.setAttribute("paramlist", pmlist);
			session.setAttribute("paramtimelist", ptmlist);
			
			msg.put("data", res);
			msg.put("flag", "1");
		}else{
			msg.put("data", "no data");
			msg.put("flag", "0");
		}
		return msg;
	}
	
	@RequestMapping(value="getCaseData")
	@ResponseBody
	public Map<String,Object> getCaseData(){
		Map<String, Object> msg = new HashMap<String, Object>();
		List<CaseDataModel> res = caseDataService.selectList();
		System.out.println(res.size());
		if(res!=null && res.size()>0){
			for(CaseDataModel m : res){
				System.out.println(m.toString());
			}
		}else{
			System.out.println(res.size());
		}
	
		msg.put("data", res);
		return msg;
	}
}
