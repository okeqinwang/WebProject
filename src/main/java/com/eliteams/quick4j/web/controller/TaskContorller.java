package com.eliteams.quick4j.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
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

import com.eliteams.quick4j.core.util.RunShellUtil;
import com.eliteams.quick4j.web.common.CommonInstance;
import com.eliteams.quick4j.web.model.User;
import com.eliteams.quick4j.web.service.UserService;

@Controller
public class TaskContorller {
//	private static String result="no result";
//	private static Map<String,Object> msg =  new HashMap<String, Object>();
//	private static String stop="1";
//	private static long lastTimeFileSize=0;
//	private static StringBuffer  sb = new StringBuffer();
	
	   @Resource
	    private UserService userService;
//	
	@RequestMapping(value="checkStatus",method=RequestMethod.GET)
	public String checkStatus(Model model,HttpSession session ){
		String status = (String) session.getAttribute("stop");
		if(status !=null){
			if( "1".equals(status)){
				return "redirect:/index";
			}else{
				return "redirect:/showlog";
			}
		}
		return "redirect:/index";
	}
	
	@RequestMapping(value="showlog",method=RequestMethod.GET)
	public String showLog(Model model ,HttpSession session){
		System.out.println("进入日志展示页面");
		return "showlog";
	}
	
	@RequestMapping(value="commitTask",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> commitTask(Model model,HttpSession session,HttpServletRequest request){
		System.out.println("提交任务...");
		Map<String,Object> msg = new HashMap<String, Object>();
		User user = (User) session.getAttribute("userInfo");
		
		if(user==null){
			System.err.println("session 丢失");
			msg.put("stop", "1");
			msg.put("status", "failed");
			msg.put("msg", "session 丢失");
			return msg;
		}
		
		String  havecommit = (String) session.getAttribute("havecommit");
		if("1".equals(havecommit) ){
			msg.put("status", "success");
			msg.put("msg", "任务还在运行，请勿重复提交");
			return msg;
		}
		
		
		session.setAttribute("havecommit", "1");
		session.setAttribute("stop", "0");
		
		user.setTask_state("0");
		userService.updateTaskState(user);
		
//		User authUserInfo =(User) session.getAttribute("userInfo");
//		String filename =authUserInfo.getUsername();
		String filename = CommonInstance.FILENAME;
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
		cmds.add("ping -c 50  baidu.com  ");
		String []  cmd = cmds.toArray(new String [cmds.size()]);
		int status = RunShellUtil.executeCommand2File(cmd, file);
//		model.addAttribute("result", "1");
		if(status == 0){
			//save to mysql
			user.setTask_state("1");
			userService.updateTaskState(user);
//			stop="1";
			System.err.println("任务执行完成");
			System.err.println("任务执行完成");
			System.err.println("任务执行完成");
			System.err.println("任务执行完成");
			System.err.println("任务执行完成");
			
			session.setAttribute("stop", "1");
			session.setAttribute("havecommit", "0");
			msg.put("stop", "1");
			msg.put("status", "success");
			msg.put("msg", "恭喜，任务执行成功");
		}else{
			session.setAttribute("stop", "1");
			msg.put("stop", "1");
			msg.put("status", "failed");
			msg.put("msg", "oohh，任务提交异常");
		}
		return msg;
	}
		
	
	@RequestMapping(value="getLog",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object>  getLog(Model model,HttpSession session,HttpServletRequest request){
		String result = "no result";
		String _start = request.getParameter("lastTimeFileSize");
		Long start = Long.valueOf(_start);
//		User authUserInfo =(User) session.getAttribute("userInfo");
//		String filename =authUserInfo.getUsername();
		String filename = CommonInstance.FILENAME;
		String filepath = request.getServletContext().getRealPath("/logfile"+File.separator+filename);
		File logfile = new File(filepath);
		Map<String,Object> msg = new HashMap<String, Object>();
		if(!logfile.exists()){
			System.out.println("日志文件不存在...");
			session.setAttribute("stop", "1");
			msg.put("stop", "1");
			msg.put("flag", "success");
			msg.put("data","日志文件不存在");
			msg.put("msg","日志文件不存在");
			msg.put("lastTimeFileSize","-1");
			return msg;
		}
		
//		System.out.println("准备读取日志  ...");
		
		try {
			result = realtimeShowLog(logfile,start);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String stop = (String) session.getAttribute("stop");
		System.out.println("读取日志 stop 标志"+stop);
		msg.put("flag", "success");
		msg.put("data",result);
		msg.put("lastTimeFileSize","0");
		msg.put("stop", stop);
		return msg;
	}
	
	 private String realtimeShowLog(File logFile,long start) throws IOException{   
		 StringBuffer sb = new StringBuffer();
	        //指定文件可读可写   
	        final RandomAccessFile randomFile = new RandomAccessFile(logFile,"r");   
	        if( start>0&&(start == randomFile.length())){
	        	System.out.println("日志文件没有变化，返回原值 ，当前文件长度为 "+start);
	        	randomFile.close();
	        	return  "日志文件没有变化，返回原值 ，当前文件长度为 " ;
	        }
	        //获得变化部分的   
	        randomFile.seek(start);   
	        String tmp = "";   
	        while( (tmp = randomFile.readLine())!= null) {   
	            sb.append(tmp).append("<br>");
	        }   
//	        lastTimeFileSize = randomFile.length();   
	        randomFile.close();
	        return sb.toString();
	    }   
	 
}
