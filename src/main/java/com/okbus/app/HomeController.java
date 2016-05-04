package com.okbus.app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public ModelAndView signin() {
		return new ModelAndView("signin", "command", new User());
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("app-1.0.0-BUILD-SNAPSHOT")User user) throws JsonParseException, JsonMappingException, IOException {
		String url = "http://localhost:8080/api-0.0.1-SNAPSHOT/user?email=" + user.getEmail();
		RestTemplate restTemplate = new RestTemplate();
		String jsonResponse = restTemplate.getForObject(url, String.class);
		ObjectMapper mapper = new ObjectMapper();
		
		User userFromAPI = mapper.readValue(jsonResponse, User.class);
		if (userFromAPI.getPassword().equals(user.getPassword())) {
			return "redirect:dashboard";
		} else {
			return "signin";
		}
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signUp(Model model) {
		return new ModelAndView("signup", "command", new NewUser());
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signingUp(@ModelAttribute("app-1.0.0-BUILD-SNAPSHOT")NewUser newUser) {
		String url = "http://localhost:8080/api-0.0.1-SNAPSHOT/user";
		if (newUser.getPassword().equals(newUser.getConfirmPassword())) {
			User user = new User();
			user.setEmail(newUser.getEmail());
			user.setName(newUser.getName());
			user.setPassword(newUser.getPassword());
			user.setPhoneNumber(newUser.getPhoneNumber());
			
			MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
			map.add("name", newUser.getName());
			map.add("email", newUser.getEmail());
			map.add("password", newUser.getPassword());
			map.add("phoneNumber", newUser.getPhoneNumber());
			
			RestTemplate restTemplate = new RestTemplate();
			String jsonResponse = restTemplate.postForObject(url, map, String.class);
			return "redirect:signin";
		} else {
			return "redirect:signup";
		}
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard() {
		return "app-pesanbus";
	}
}













