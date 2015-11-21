package com.eliteams.quick4j.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eliteams.quick4j.web.model.AreaModel;
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
			List<AreaModel> areas = (List<AreaModel>) session.getAttribute("arealist");
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
			List<AreaModel> areas = (List<AreaModel>) session.getAttribute("arealist");
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
			//第一次生成，创建新的对象
			System.out.println("第一次创建");
			List<AreaModel> areas = (List<AreaModel>) session.getAttribute("arealist");
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
	
	
	
	
}
