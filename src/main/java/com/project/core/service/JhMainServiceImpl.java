package com.project.core.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


@Service
public class JhMainServiceImpl implements JhMainService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	int cnt = 0;
	@Override
	public boolean initChat(Model model) throws Exception {
		
		ClassPathResource resource = new ClassPathResource("/config/chatIp.txt");
		Path path = Paths.get(resource.getURI());
		List<String> line = Files.readAllLines(path);
		String content = "";
		for(int i=0; i<line.size(); i++) {
			content += line.get(i);
		}
		model.addAttribute("filepath",content);
		String user_name = CustomUserService.getUserId();
		model.addAttribute("userName",user_name);
		if(user_name.isEmpty()) {
			model.addAttribute("userName","guest"+cnt);
		}
		cnt++;
		
		return true;
	}

}
