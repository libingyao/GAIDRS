package com.chinavo.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletResponse;

import com.chinavo.service.DownloadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DownloadController {
	@Autowired
	private DownloadService downloadService;

	@RequestMapping("/download")
	public String download(HttpServletResponse response) throws IOException {
		List<File> files = new ArrayList<File>();
		File Allfile = new File("/home/hong/disks/disk1/TargetFITS/");
		if (Allfile.exists()) {
			File[] fileArr = Allfile.listFiles();
			for (File file2 : fileArr) {
				files.add(file2);
			}
		}

		// String fileName = UUID.randomUUID().toString() + ".zip";
		String fileName = "fits" + ".zip";
		String outFilePath = "/home/hong/disks/disk1/TargetFITS/";
		File fileZip = new File(outFilePath + fileName);
		// 文件输出流
		try {
			FileOutputStream outStream = new FileOutputStream(fileZip);
			ZipOutputStream toClient = new ZipOutputStream(outStream);
			downloadService.zipFile(files, toClient);
			toClient.close();
			outStream.close();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		downloadService.downloadFile(fileZip, response, true);
		return "WEB-INF/views/succ";
	}

}
