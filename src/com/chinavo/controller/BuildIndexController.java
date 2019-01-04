package com.chinavo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chinavo.service.BuildIndexService;

@Controller
public class BuildIndexController {
	@Autowired
	private BuildIndexService buildIndexService;

	@RequestMapping("/buildIndex")
	public String buildIndex(@RequestParam("path") String path) {

		// String pathNew = "/home/hong/disks/disk1/Mohe/test/20140116";
		System.out.print(path);
		buildIndexService.buildindexSQL(path);

		return "WEB-INF/views/indexsucc";

	}

	@RequestMapping("/returnIndex")
	public String returnIndex() {

		return "WEB-INF/views/retrieve";
	}
}
