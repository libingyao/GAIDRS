package com.chinavo.service;

import java.io.FileWriter;
import java.io.IOException;

import org.springframework.stereotype.Service;

@Service
public class BuildIndexService {
	
	public void buildindexSQL(String context) {
		if (!context.equals(null)) {
//			String pathNew = "/home/hong/disks/disk1/Mohe/test/20140116";
			String pathNew = context;

			FileWriter writer;

			try {
				writer = new FileWriter("/home/hong/Documents/code/HEALPix_Redis测试/indexNew");

				writer.write(pathNew);
				writer.flush();
				writer.close();

			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			// 打开cmd 传入命令
			String[] cmd = new String[] { "sh", "-c",
					"/home/hong/Wangjie/workspace/Pattern_Server/Debug/Pattern_Server < /home/hong/Documents/code/HEALPix_Redis测试/indexNew" };
			Runtime runtime = Runtime.getRuntime();
			Process process = null;
			try {
				process = runtime.exec(cmd);

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

}
