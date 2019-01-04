package com.chinavo.service;

import java.io.FileWriter;
import java.io.IOException;

import org.springframework.stereotype.Service;

@Service
public class RetrieveService {
	
	public void retrieveSQL(String context) {
		if(!context.equals(null)){
			String[] sql = context.split(",");
			if(!sql[0].equals(null)&&!sql[1].equals(null)&&!sql[2].equals(null)&&!sql[3].equals(null)&&!sql[4].equals(null)&&!sql[5].equals(null)&&!sql[6].equals(null)) {
			String newSQL = "select subimage from " + sql[0] + " where center_ra=" +sql[1]+",center_dec="+sql[2]+",x_size="+sql[3]+",y_size="+sql[4]+",begin_time="+sql[5]+",end_time="+sql[6]+"; \\q";
			FileWriter writer;
			
				try {
					writer = new FileWriter("/home/hong/Documents/code/HEALPix_Redis测试/testNew");
					writer.write(newSQL);
					writer.flush();
					writer.close();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			//打开cmd 传入命令
			String[] cmd = new String[] {"sh","-c","/home/hong/Wangjie/Pattern_Server/Debug/Pattern_Server < /home/hong/Documents/code/HEALPix_Redis测试/testNew"};
			Runtime runtime = Runtime.getRuntime();
			Process process = null;
			try {
				process = runtime.exec(cmd);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.print(newSQL);
			}
		}
		
		
		
	}

}
