package com.okbus.app;

import java.io.IOException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
			return "index";
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
			
			RestTemplate restTemplate = new RestTemplate();
			restTemplate.getMessageConverters().add(new MappingJacksonHttpMessageConverter());
			restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
			
			String jsonResponse = restTemplate.postForObject(url, user, String.class);
			return "signin";
		} else {
			return "signup";
		}
	}
}













