package com.project.core.controller;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.io.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.project.core.model.entity.CustomUserVo;

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
	public void callback(HttpServletRequest request,HttpServletResponse response , Model model) throws UnsupportedEncodingException {
		
		 String clientId = "U0vaVQuie7jWIBrNfTcP";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
		    String clientSecret = "FQdzaZ5Gx4";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
		    String code = request.getParameter("code");
		    String state = request.getParameter("state");
		    String redirectURI = URLEncoder.encode("http://localhost:8080/callback", "UTF-8");
		    String apiURL;
		    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
		    apiURL += "client_id=" + clientId;
		    apiURL += "&client_secret=" + clientSecret;
		    apiURL += "&redirect_uri=" + redirectURI;
		    apiURL += "&code=" + code;
		    apiURL += "&state=" + state;
		    
		    String access_token = "";
		    String refresh_token = "";
		    
		    System.out.println("apiURL="+apiURL);
		    try {
		      URL url = new URL(apiURL);
		      HttpURLConnection con = (HttpURLConnection)url.openConnection();
		      con.setRequestMethod("GET");
		      int responseCode = con.getResponseCode();
		      BufferedReader br;
		      System.out.print("responseCode="+responseCode);
		      if(responseCode==200) { // ��� ȣ��
		        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		      } else {  // ���� �߻�
		        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		      }
		      String inputLine;
		      StringBuffer res = new StringBuffer();
		      while ((inputLine = br.readLine()) != null) {
		        res.append(inputLine);
		      }
		      br.close();
		      if(responseCode==200) { //��� ���� ����۵� ��� �� 
		    	  System.out.println(res);
		    	  
		    	  JsonParser parsing = new JsonParser();
		    	  Object obj = parsing.parse(res.toString());
		    	  JsonObject jsonObj = (JsonObject)obj;
		    	  
		    	  access_token = jsonObj.get("access_token").toString();
		    	  refresh_token = jsonObj.get("refresh_token").toString();
		    	  
		    	  personalInfo(access_token,response);
		    	  
		    	  
		    	  
		      } 
		    } catch (Exception e) {
		      System.out.println(e);
		    }
		
	}
	

	
	public void personalInfo(String token, HttpServletResponse res2) throws Exception {
		
	        String header = "Bearer " + token; // Bearer ����� ��� �߰�

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
	            
	            CustomUserVo vo = new CustomUserVo();
	            // DB�� ��� �����ϱ� 
	            vo.setUSERNAME("Jieun");
	            
	            ArrayList<SimpleGrantedAuthority> authorities = new ArrayList<>();
	            authorities.add(new SimpleGrantedAuthority("ROLE_MEMBER"));
	            Authentication auth = new UsernamePasswordAuthenticationToken(vo,null,authorities);
	            SecurityContextHolder.getContext().setAuthentication(auth);
	            
	            res2.sendRedirect("/");
	            
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        
	        
	}
	
	

	//한글넣었음	
	@RequestMapping("/access_denied_page")
	public String accessDeniedPage() throws Exception {
		return "junho/access_denied_page.tiles";
	}
}
