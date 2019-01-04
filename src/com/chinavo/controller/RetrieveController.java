package com.chinavo.controller;

import com.chinavo.service.RetrieveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RetrieveController {
	
	@Autowired
	private RetrieveService retrieveService;
	@RequestMapping("/retrieve")
	public String retrieve(@RequestParam("ra") String ra,@RequestParam("dec") String dec,@RequestParam("xsize") String xsize,@RequestParam("ysize") String ysize,@RequestParam("startTime") String startTime,@RequestParam("endTime") String endTime,@RequestParam("dataSource") String dataSource) {
		String context = dataSource+","+ra+","+dec+","+xsize+","+ysize+","+startTime+","+endTime;
		System.out.print("查询内容："+context);
		if(!context.equals(null)) {
			retrieveService.retrieveSQL(context);
			return "WEB-INF/views/download";
		}else {
			return "WEB-INF/views/retrieve";	
		}
	}

}
