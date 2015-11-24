package com.eliteams.quick4j.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eliteams.quick4j.web.model.AreaModel;
import com.eliteams.quick4j.web.model.CaseDataSessionModel;
import com.eliteams.quick4j.web.model.EmissionModel;
import com.eliteams.quick4j.web.model.ParaTimeModel;
import com.eliteams.quick4j.web.model.ParamModel;
import com.eliteams.quick4j.web.model.WeatherFilePath;

@Controller
public class TableDataController {

	//参数列表
	@RequestMapping(value="getParaData")
	@ResponseBody
	public Map<String,Object>  getParaData(HttpSession session){
		Map<String,Object> msg = new HashMap<String, Object>();

		
		List<ParamModel> res = (List<ParamModel>) session.getAttribute("paramlist");
		if(res !=null && res.size()>0){
			//已经存在这个对象，说明被提交过更改
			msg.put("status", "success");
			msg.put("data", res);
			return msg;
		}else{
			//第一次生成，创建新的对象
			CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
			List<AreaModel> areas  =null;
			if(sm!=null){
				areas= sm.getArealist();
			}
			
			if(areas!=null && areas.size()>0){
				res = new ArrayList<ParamModel>();
				for(int i=0;i<areas.size();i++){
					ParamModel p = new ParamModel(areas.get(i).getArea_in(),"0","0","0","0","0","0","0");
					System.out.println("生成参数对象 "+p.toString());
					res.add(p);
				}
				msg.put("status", "success");
				msg.put("data", res);
			}else{
				msg.put("status", "failed");
			}
			return msg;
		}
	}
	
	
	//文件路径表
	@RequestMapping(value="getFilePathData")
	@ResponseBody
	public Map<String,Object>  getFilePathData(HttpSession session){
		Map<String,Object> msg = new HashMap<String, Object>();
		
		List<WeatherFilePath> res = (List<WeatherFilePath>) session.getAttribute("filepathlist");
		if(res !=null && res.size()>0){
			//已经存在这个对象，说明被提交过更改
			msg.put("status", "success");
			msg.put("data", res);
			return msg;
		}else{
			//第一次生成，创建新的对象
			CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
			List<AreaModel> areas = null;
			if(sm!=null){
				areas = sm.getArealist();
			}
			if(areas!=null && areas.size()>0){
				res = new ArrayList<WeatherFilePath>();
				for(int i=0;i<areas.size();i++){
					WeatherFilePath p = new WeatherFilePath(areas.get(i).getArea_in(),"0","0","0","0","0");
					System.out.println("生成气象文件路径的对象 "+p.toString());
					res.add(p);
				}
				msg.put("status", "success");
				msg.put("data", res);
			}else{
				msg.put("status", "failed");
			}
			return msg;
		}
	}
	
	
	//时间专栏
	@RequestMapping(value="getTimeData")
	@ResponseBody
	public Map<String,Object>  getTimeData(HttpSession session){
		Map<String,Object> msg = new HashMap<String, Object>();
		List<ParaTimeModel> res = (List<ParaTimeModel>) session.getAttribute("paramtimelist");
		if(res !=null && res.size()>0){
			//已经存在这个对象，说明被提交过更改
			System.out.println("获取填充的对象");
			msg.put("status", "success");
			msg.put("data", res);
			return msg;
		}else{
			CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
			List<AreaModel> areas = null;
			if(sm!=null){
				areas = sm.getArealist();
			}
			if(areas!=null && areas.size()>0){
				res = new ArrayList<ParaTimeModel>();
				for(int i=0;i<areas.size();i++){
					ParaTimeModel p = new ParaTimeModel(areas.get(i).getArea_in(),"0","0","0","0");
					System.out.println("生成参数对象 "+p.toString());
					res.add(p);
				}
				msg.put("status", "success");
				msg.put("data", res);
			}else{
				msg.put("status", "failed");
			}
			return msg;
		}
	}
	
	
	 
	//排放源输入  获取单个区域的相关信息
		@RequestMapping(value="getEmissonByAreaName")
		@ResponseBody
		public Map<String,Object>  getEmissonByAreaName(HttpSession session,HttpServletRequest request){
			Map<String,Object> msg = new HashMap<String, Object>();
			String areaname = request.getParameter("areaname");
			System.out.println(areaname);
			EmissionModel em = null;
			if(areaname!=null && !"".equals(areaname)){
				CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
		    	if(sm!=null  ){
		    		List<AreaModel>  arealist =sm.getArealist();
		    			for(AreaModel  am : arealist){
		    				if(areaname.equals(am.getArea_in())){
		    					em=am.getEmission();
		    					msg.put("flag", 1);
		    					msg.put("data", em);
		    				}
			    		}
		    	}
			}else{
				msg.put("flag", 0);
				msg.put("msg", "参数异常");
			}
			return msg;
		}
		

	
}
