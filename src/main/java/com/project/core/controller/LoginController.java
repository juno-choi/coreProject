package com.project.core.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping(value = "/loginPage")
	public String login(Model model) {
		
		return "junho/loginPage.tiles";
	}
	
	@RequestMapping("/joinPage")
	public String join(Model model) {
		
		return "junho/join.tiles";
	}
	
	@RequestMapping(value = "/callback")
	public String callback(Model model) {
		
		return "junho/callback";
	}
	
	@RequestMapping(value = "/personalInfo")
	public void personalInfo(HttpServletRequest request) throws Exception {
	        String token = "AAAAOD-qZze84nq9XI7lNLBKRv04-i120f6XlJ7gz-Kecu3OYyl_M8TQzboBUSGiyJJ4hHBPfm0MFSc_fsoSy4mS4bI";
	        String header = "Bearer " + token; // Bearer
	        try {
	            String apiURL = "https://openapi.naver.com/v1/nid/me";
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("Authorization", header);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { //
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  //
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            br.close();
	            System.out.println(response.toString());
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	}

	
	@RequestMapping("/access_denied_page")
	public String accessDeniedPage() throws Exception {
		return "junho/access_denied_page.tiles";
	}
}
