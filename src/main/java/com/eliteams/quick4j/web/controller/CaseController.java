package com.eliteams.quick4j.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eliteams.quick4j.core.util.RunShellUtil;
import com.eliteams.quick4j.web.model.AreaModel;
import com.eliteams.quick4j.web.model.BasicInfoModel;
import com.eliteams.quick4j.web.model.EmissionModel;
import com.eliteams.quick4j.web.model.ParamModel;
import com.eliteams.quick4j.web.model.SceneModel;
import com.eliteams.quick4j.web.model.TestModel;
import com.eliteams.quick4j.web.model.User;


@Controller
public class CaseController {
	
	
	private String result="no result";
	private Map<String,Object> msg;
	private String stop="0";
	private long lastTimeFileSize=0;
	
	@RequestMapping(value="commitTask",method=RequestMethod.POST)
	public String commitTask(Model model,HttpSession session,HttpServletRequest request){
		System.out.println("提交任务...");
		session.setAttribute("lastTimeFileSize", "0");
		User authUserInfo =(User) session.getAttribute("userInfo");
		String filename =authUserInfo.getUsername();
		String filepath = request.getServletContext().getRealPath("/logfile")+File.separator+filename;
		File file = new File(filepath);
		if(file.exists()){
			file.delete();
		}
		
		// remove it when apply the real sysytem
		List<String> cmds = new ArrayList<String>();
		cmds.add("sh");
		cmds.add("-c");
		cmds.add("ping -c 50  baidu.com  ");
		String []  cmd = cmds.toArray(new String [cmds.size()]);
		RunShellUtil.executeCommand2File(cmd, file);
//		model.addAttribute("result", "1");
		return "admin-test";
	}
		
	
	@RequestMapping(value="getLog",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object>  getLog(Model model,HttpSession session,HttpServletRequest request){
		
//		String _start = request.getParameter("lastTimeFileSize");
		
//		Object _start = session.getAttribute("lastTimeFileSize");
		
		Object obj = session.getAttribute("lastTimeFileSize");
		Long start = Long.valueOf(obj.toString());
		
		System.out.println("session 中 lastTimeFileSize == "+start);
				
		User authUserInfo =(User) session.getAttribute("userInfo");
		String filename =authUserInfo.getUsername();
		
		System.out.println("开始读取文件的位置==="+start);
		System.out.println("获取日志...");
		String filepath = request.getServletContext().getRealPath("/logfile"+File.separator+filename);
		
		File logfile = new File(filepath);
		try {
			System.out.println("读取日志 准备休息5s");
			Thread.sleep(5000);
			realtimeShowLog(logfile,start);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("下次读取游标  lastTimeFileSize === " +lastTimeFileSize);
		
		//save to session
		session.setAttribute("lastTimeFileSize", lastTimeFileSize);
		session.setAttribute("stop", stop);
		
		msg = new HashMap<String, Object>();
		msg.put("flag", "success");
		msg.put("data",result);
		msg.put("lastTimeFileSize",lastTimeFileSize);
		msg.put("stop", stop);
		return msg;
	}
	
	 private void realtimeShowLog(File logFile,long start) throws IOException{   
		 	
	        //指定文件可读可写   
	        final RandomAccessFile randomFile = new RandomAccessFile(logFile,"r");   
	        
	        if( start>0&&(start == randomFile.length())){
	        	result = "finished";
	        	stop = "1";
	        	randomFile.close();
	        	return  ;
	        }
	    	StringBuffer  sb = new StringBuffer();
	        //获得变化部分的   
	        randomFile.seek(start);   
	        String tmp = "";   
	        while( (tmp = randomFile.readLine())!= null) {   
//	            System.out.println(new String(tmp.getBytes("utf-8")));   
	            sb.append(tmp).append("<br>");
	        }   
	     
	        lastTimeFileSize = randomFile.length();   
	        result = sb.toString();
	        randomFile.close();
	    }   
	

	
	// step 1 
    @RequestMapping(value="index",method=RequestMethod.GET)
    public String  index(Model model,HttpSession session){
    	BasicInfoModel m = (BasicInfoModel) session.getAttribute("basic");
		User u = (User) session.getAttribute("userInfo");
		if(u!=null){
	    	model.addAttribute("username", u.getUsername());
			System.out.println(u.toString());
		}else{
			System.out.println("session lose/........");
		}
		System.out.println("index page");
//		System.out.println(u.toString());
    	model.addAttribute("m", m);
    	model.addAttribute("flag", m==null?0:1);
    	return "index";
    }

    
	@RequestMapping(value="index",method=RequestMethod.POST )
	public String go_area(BasicInfoModel m,HttpSession session){
		session.setAttribute("basic", m);
		return "admin-area";
	}
	
	//step 2
	@RequestMapping(value="admin-area" )
	public String area(Model model,HttpSession session){
    	
		AreaModel m =(AreaModel) session.getAttribute("area");
        model.addAttribute("m",m); 
        model.addAttribute("flag", m==null?0:1);
		return "admin-area";
	}
	
	@RequestMapping(value="admin-area",method=RequestMethod.POST )
	public String go_in(AreaModel m,HttpSession session){
		System.out.println(m.toString());
		session.setAttribute("area", m);
		return "admin-in";
	}
	
	//step 3
	
	@RequestMapping(value="admin-in" )
	public String in(Model model,HttpSession session){
		EmissionModel m =(EmissionModel) session.getAttribute("emission");
//		System.out.println(m.toString());
		model.addAttribute("flag", m==null?0:1);
        model.addAttribute("m",m); 
        
		return "admin-in";
	}
	
	@RequestMapping(value="admin-in" ,method=RequestMethod.POST)
	public String go_case(EmissionModel m,HttpSession session){
		System.out.println(m.toString());
		session.setAttribute("emission", m);
		return "admin-case";
	}
	
	//step 4
	
	
	@RequestMapping(value="admin-case" )
	public String showcase(Model model,HttpSession session){
		SceneModel m =(SceneModel) session.getAttribute("scene");
        model.addAttribute("m",m);
        model.addAttribute("flag", m==null?0:1);
		return "admin-case";
	}
	
	@RequestMapping(value="admin-case" ,method=RequestMethod.POST)
	public String go_para(SceneModel m,HttpSession session){
		System.out.println(m.toString());
		session.setAttribute("scene", m);
		return "admin-para";
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
	public String go_para(ParamModel m,HttpSession session){
//		System.out.println(m.toString());
		session.setAttribute("m", m);
		return "admin-test";
	}
	
	//step 6
	@RequestMapping(value="admin-test" )
	public String test(Model model,HttpSession session){
		TestModel m =(TestModel) session.getAttribute("test");
        model.addAttribute("m",m);
        model.addAttribute("flag", m==null?0:1);
		return "admin-test";
	}
	
	@RequestMapping(value="admin-test" ,method=RequestMethod.POST)
	public String go_done(TestModel m,HttpSession session){
//		System.out.println(m.toString());
		session.setAttribute("test", m);
		return "admin-done";
	}
	
	
	//step 6
	@RequestMapping(value="admin-done" )
	public String done(Model model,HttpSession session){
		System.out.println("完成页面");
		return "admin-done";
	}
	
	
	
	
	
}
