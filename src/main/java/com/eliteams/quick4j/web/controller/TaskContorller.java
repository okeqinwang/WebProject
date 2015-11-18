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
import com.eliteams.quick4j.web.model.User;

@Controller
public class TaskContorller {
	private String result="no result";
	private Map<String,Object> msg;
	private String stop="0";
	private long lastTimeFileSize=0;
	
	@RequestMapping(value="checkStatus",method=RequestMethod.GET)
	public String checkStatus(Model model ){
		System.out.println("stop=="+stop);
		if("1".equals(stop)){
			//task have been stopped
			System.out.println("已经停止");
			return "redirect:/index";
		}
		model.addAttribute("stop", stop);
		return "welcome";
	}
	
	@RequestMapping(value="commitTask",method=RequestMethod.POST)
	public String commitTask(Model model,HttpSession session,HttpServletRequest request){
		System.out.println("提交任务...");
		stop="0";
		User authUserInfo =(User) session.getAttribute("userInfo");
		String filename =authUserInfo.getUsername();
		System.out.println("filename"+filename);
		String filepath = request.getServletContext().getRealPath("/logfile")+File.separator+filename;
		File file = new File(filepath);
		if(file.exists()){
			file.delete();
		}
		// remove it when apply the real sysytem
		List<String> cmds = new ArrayList<String>();
		cmds.add("sh");
		cmds.add("-c");
		cmds.add("ping -c 10000  baidu.com  ");
		String []  cmd = cmds.toArray(new String [cmds.size()]);
		int status = RunShellUtil.executeCommand2File(cmd, file);
//		model.addAttribute("result", "1");
		if(status == 0){
			//save to mysql
			stop="1";
			model.addAttribute("status", "success");
		}else{
			model.addAttribute("status", "failed");
		}
		return "admin-test";
	}
		
	
	@RequestMapping(value="getLog",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object>  getLog(Model model,HttpSession session,HttpServletRequest request){
		
		String _start = request.getParameter("lastTimeFileSize");
		
		Long start = Long.valueOf(_start);
		//session.
		System.out.println("获取到页面 传来的 lastTimeFileSize == "+start);
				
		User authUserInfo =(User) session.getAttribute("userInfo");
		String filename =authUserInfo.getUsername();
		
		System.out.println("开始读取文件的位置==="+start);
		System.out.println("获取日志...");
		String filepath = request.getServletContext().getRealPath("/logfile"+File.separator+filename);
		
		File logfile = new File(filepath);
		try {
			System.out.println("读取日志 准备休息1s");
			realtimeShowLog(logfile,start);
			Thread.sleep(1000);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("下次读取游标  lastTimeFileSize === " +lastTimeFileSize);
		
		//save to session
		//session.setAttribute("lastTimeFileSize", lastTimeFileSize);
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
	        	//stop = "0";
	        	System.out.println("读取日志完成");
	        	randomFile.close();
	        	return  ;
	        }
	    	StringBuffer  sb = new StringBuffer();
	        //获得变化部分的   
	        randomFile.seek(0);   
	        String tmp = "";   
	        while( (tmp = randomFile.readLine())!= null) {   
//	            System.out.println(new String(tmp.getBytes("utf-8")));   
	            sb.append(tmp).append("<br>");
	        }   
	        lastTimeFileSize = randomFile.length();   
	        result = sb.toString();
	        randomFile.close();
	    }   
	
	
}
