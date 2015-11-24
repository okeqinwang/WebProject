package com.eliteams.quick4j.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eliteams.quick4j.web.model.AreaModel;
import com.eliteams.quick4j.web.model.BasicInfoModel;
import com.eliteams.quick4j.web.model.CaseDataModel;
import com.eliteams.quick4j.web.model.CaseDataSessionModel;
import com.eliteams.quick4j.web.model.EmissionModel;
import com.eliteams.quick4j.web.model.ParaTimeModel;
import com.eliteams.quick4j.web.model.ParamListForm;
import com.eliteams.quick4j.web.model.ParamModel;
import com.eliteams.quick4j.web.model.SceneModel;
import com.eliteams.quick4j.web.model.TestModel;
import com.eliteams.quick4j.web.model.WeatherFilePath;
import com.eliteams.quick4j.web.service.CaseDataService;


@Controller
public class CaseController {
	
	@Resource
	private CaseDataService caseService;
	
	// step 1 
    @RequestMapping(value="index",method=RequestMethod.GET)
    public void  index(Model model,HttpSession session){
    	CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
    	if(sm!=null){
    		BasicInfoModel m = sm.getBasic();
    		model.addAttribute("m", m);
    		model.addAttribute("flag", m==null?0:1);
    	}
    }
    
	@RequestMapping(value="index",method=RequestMethod.POST )
	public String go_area(BasicInfoModel m,HttpSession session){
		CaseDataSessionModel  sm = new CaseDataSessionModel();
		sm.setBasic(m);
		session.setAttribute("sm", sm);
		return "redirect:/admin-area";
	}
	
	//step 2
	@RequestMapping(value="admin-area" )
	public String area(Model model,HttpSession session){
		CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
    	if(sm!=null){
    		List<AreaModel>  m =sm.getArealist();
            model.addAttribute("m",m); 
            model.addAttribute("flag", m==null?0:1);
    	}else{
    		  model.addAttribute("flag", 0);
    	}
    	
    	return "admin-area";
	}
	
	@RequestMapping(value="admin-area",method=RequestMethod.POST )
	public String go_in(AreaModel m,HttpSession session){
		System.out.println("生成区域对象，暂时模拟 三个对象");
		System.out.println(m.toString());
		//模拟区域对象的数据
		List<AreaModel> list = new ArrayList<AreaModel>();
		list.add(new AreaModel("hello","1"));
		list.add(new AreaModel("world","2"));
		list.add(new AreaModel("java","3"));
		CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
    	if(sm!=null){
    		if(sm.getArealist()==null){
    			sm.setArealist(list);
    		}
    		session.setAttribute("sm", sm);
    		CaseDataSessionModel tsm = (CaseDataSessionModel) session.getAttribute("sm");
    		System.out.println("保存在session中的区域个数");
    		System.out.println(tsm.getArealist().size());
    	}else{
    		return "redirect:/index";
    	}
    	return "redirect:/admin-in";
	}
	
	//step 3
	
	@RequestMapping(value="admin-in" )
	public String in(Model model,HttpSession session){
		
//		CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
//    	if(sm!=null  ){
//    		List<AreaModel>  arealist =sm.getArealist();
//    		List<EmissionModel> emlist = new ArrayList<EmissionModel>(arealist.size());
//    		for(AreaModel  am : arealist){
//    			if(am.getEmission()!=null){
//    				emlist.add(am.getEmission());
//    				System.out.println("admin-in-get"+am.getEmission().toString());
//    			}
//    		}
//            model.addAttribute("m",emlist); 
//            System.out.println(emlist.size());
//            model.addAttribute("flag", emlist==null?0:1);
//    	}else{
//    		 // model.addAttribute("flag", 0);
//    	}
    	return "admin-in";
	}
	
	
	
	
	
	@RequestMapping(value="admin-in" ,method=RequestMethod.POST)
	public String go_case(EmissionModel m,HttpSession session){

		CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
    	if(sm!=null){
    		List<AreaModel> arealist = sm.getArealist();
    		if(arealist!=null && arealist.size()>0){
    			for(AreaModel am:arealist){
        			
        			if(m.getArea_id().equals(am.getArea_in())){
        				am.setEmission(m);
        			}
        		}
//    			sm.setArealist(arealist);
        		session.setAttribute("sm", sm);
        		
        		for(AreaModel amm:sm.getArealist()){
        			if(amm.getEmission()!=null){
        				System.out.println(amm.getEmission().toString());
        			}
        		}
        		
    		}else{
    			System.out.println("没有获取到区域数据");
    			return "redirect:/admin-area";
    		}
    		
    	}else{
    		System.out.println("还没有创建案例");
    		return "redirect:/index";
    	}
    	return "redirect:/admin-in";
	}
	
	//step 4
	
	
	@RequestMapping(value="admin-case" )
	public String showcase(Model model,HttpSession session){
		
		CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
    	if(sm!=null){
    		SceneModel  m =sm.getScene();
            model.addAttribute("m",m); 
            model.addAttribute("flag", m==null?0:1);
    	}else{
    		  model.addAttribute("flag", 0);
    	}
		return "admin-case";
	}
	
	@RequestMapping(value="admin-case" ,method=RequestMethod.POST)
	public String go_para(SceneModel m,HttpSession session,Model model){
		
		CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
		if(sm!=null){
			sm.setScene(m);
			return "admin-para";
		}else{
			return "redirect:/index";
		}
	}
	
	//step 5 
	
	@RequestMapping(value="admin-para" )
	public String param(Model model,HttpSession session){
		ParamModel m =(ParamModel) session.getAttribute("para");
        model.addAttribute("m",m);
        model.addAttribute("flag", m==null?0:1);
		return "admin-para";
	}
	
	
	
	@RequestMapping(value="admin-para" ,method=RequestMethod.POST)
	public String go_test(ParamListForm listparaform,HttpSession session,Model model,HttpServletRequest request){
		String  data =request.getParameter("listpara");
		String projects = request.getParameter("projects");
		if(data!=null && projects!=null){
			//service doing 
			List<ParamModel> params = caseService.initParamModel(data, projects);
			
			
			session.setAttribute("paramlist", params);
		}
		System.out.println("准备跳转到test页面");
		return "admin-test";
	}
	
	//step 6
	@RequestMapping(value="admin-test" )
	public String test(Model model,HttpSession session){
		
		StringBuffer sb = new StringBuffer();
		BasicInfoModel b = (BasicInfoModel) session.getAttribute("basic");
		if(b!=null){
			sb.append(b.toString()).append("<br>");
		}
		
		SceneModel sc = (SceneModel) session.getAttribute("scene");
		if(sc!=null){
			sb.append(sc.toString()).append("<br>");
		}
		
		
		TestModel m =(TestModel) session.getAttribute("test");
        model.addAttribute("m",m);
        model.addAttribute("flag", m==null?0:1);
        
        model.addAttribute("allpara", sb==null?"no param":sb.toString());
        
		return "admin-test";
	}
	
	@RequestMapping(value="admin-test" ,method=RequestMethod.POST)
	public String go_done(TestModel m,HttpSession session,HttpServletRequest request){
		String  data =request.getParameter("timepara");
		String projects = request.getParameter("projects");
		if(data!=null && projects!=null){
			//service doing 
			List<ParaTimeModel> params = caseService.initParaTimeModel(data, projects);
			System.out.println("initParaTimeModel........");
			for(ParaTimeModel p :params){
				System.out.println(p.toString());
			}
			
			session.setAttribute("paramtimelist", params);
		}
		System.out.println("准备跳转到done页面");
		return "admin-done";
	}
	
	
	//step 6
	@RequestMapping(value="admin-done" )
	public String done(Model model,HttpSession session){
		System.out.println("完成页面");
		return "admin-done";
	}
	
	@RequestMapping(value="saveResult")
	@ResponseBody
	public Map<String,Object> saveResult(HttpSession session){
		Map<String,Object> msg = new HashMap<String, Object>();
		CaseDataSessionModel sm = (CaseDataSessionModel) session.getAttribute("sm");
		List<ParaTimeModel> ptm = (List<ParaTimeModel>) session.getAttribute("paramtimelist");
		List<WeatherFilePath> wfp = (List<WeatherFilePath>) session.getAttribute("filepathlist");
		List<ParamModel> params =(List<ParamModel>) session.getAttribute("paramlist");
		
		if(wfp ==null){
			wfp = new ArrayList<WeatherFilePath>(ptm.size());
			for(int i = 0 ;i<ptm.size();i++){
				wfp.add(new WeatherFilePath());
			}
		}
		
		int  sm_status = caseService.checkCaseDataSession(sm);
		
		if(sm_status != 0){
			msg.put("msg", "数据不完整，请仔细检查参数是否设置正确");
			msg.put("flag","0");
			return msg;
		}else{
			
			List<CaseDataModel> listcasemodel = caseService.assemCaseDataModel(sm,ptm,wfp,params);
			
			boolean status = caseService.saveCaseData(listcasemodel);
			
			System.out.println("success save data size =="+listcasemodel.size());
			
			if(status ==true){
				msg.put("msg", "恭喜，数据保存成功");
			}else{
				msg.put("msg", "ooh,数据保存遇到问题，联系管理员");
			}
			return msg;
			
		}
	}
	
}
