package com.eliteams.quick4j.core.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;


public class RunShellUtil {

	public static void main(String[] args) {
		RunShellUtil obj = new RunShellUtil();
//		String domainName = "baidu.com";
//		String command = "ping -c 5 " + domainName;
		final String filename="mylog.txt";
		final String path ="/home/spark/soft/tomcat/webapps/quick4j/logfile";
		File file = new File(path+File.separator+filename);
		
		List<String> cmds = new ArrayList<String>();
		cmds.add("sh");
		cmds.add("-c");
		cmds.add("ping -c 50  baidu.com  ");
		String []  cmd = cmds.toArray(new String [cmds.size()]);
		
		obj.executeCommand2File(cmd,file);
		
	}

	public String executeCommand(String [ ] command) {
		StringBuffer output = new StringBuffer();
		Process p;
		try {
			p = Runtime.getRuntime().exec(command);
			
			BufferedReader reader = 
                            new BufferedReader(new InputStreamReader(p.getInputStream()));
                        String line = "";			
			while ((line = reader.readLine())!= null) {
				System.out.println(line);
				output.append(line + "\n");
			}
			p.waitFor();
			p.destroy();
//			System.err.println(p.waitFor());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return output.toString();
	}
	
	public String executeCommand(String  command) {
		StringBuffer output = new StringBuffer();
		Process p;
		try {
			p = Runtime.getRuntime().exec(command);
//			p.waitFor();
			BufferedReader reader = 
                            new BufferedReader(new InputStreamReader(p.getInputStream()));
                        String line = "";			
			while ((line = reader.readLine())!= null) {
				System.out.println(line);
				output.append(line + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return output.toString();
	}
	
	
	public static  int executeCommand2File(String [ ] command,File file) {
		Process p;
		int result=0;
		try {
			p = Runtime.getRuntime().exec(command);
			
			BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
			FileWriter  fw = new FileWriter(file);
            String line = "";			
			while ((line = reader.readLine())!= null) {
//				System.out.println(line);
				fw.write(line+"\n");
				fw.flush();
			}
			fw.close();
			result=p.waitFor();
			p.destroy();
			System.err.println(p.waitFor());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	

}