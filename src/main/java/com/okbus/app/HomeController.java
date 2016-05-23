package com.okbus.app;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	public ModelAndView signin(HttpServletRequest request, HttpServletResponse response)
			throws JsonParseException, JsonMappingException, IOException {
		return new ModelAndView("signin", "command", new User());
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("ok-bus-app")User user, HttpServletRequest request,
			HttpServletResponse response) throws JsonParseException, JsonMappingException, IOException {
		
		if (user.getEmail().isEmpty() || user.getPassword().isEmpty()) {
			return "redirect:signin";
		} else {
			String url = "http://kchoam.cloudapp.net:8080/api-ok-bus/user?email=" + user.getEmail();
			RestTemplate restTemplate = new RestTemplate();
			String jsonResponse = restTemplate.getForObject(url, String.class);
			ObjectMapper mapper = new ObjectMapper();
			
			User userFromAPI = mapper.readValue(jsonResponse, User.class);
			if (userFromAPI.getPassword().equals(user.getPassword())) {
				HttpSession session = request.getSession(true);
				session.setAttribute("loggedInUserId", userFromAPI.getId());
				return "redirect:dashboard";
			} else {
				return "redirect:signin";
			}
		}
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signUp(Model model) {
		return new ModelAndView("signup", "command", new NewUser());
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signingUp(@ModelAttribute("ok-bus-app")NewUser newUser) {
		if (newUser.getEmail().isEmpty() || newUser.getName().isEmpty() || newUser.getPassword().isEmpty() || 
				newUser.getPhoneNumber().isEmpty() || newUser.getConfirmPassword().isEmpty()) {
			return "redirect:signup";
		}
		String url = "http://kchoam.cloudapp.net:8080/api-ok-bus/user";
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
			restTemplate.postForObject(url, map, String.class);
			return "redirect:signin";
		} else {
			return "redirect:signup";
		}
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboard(HttpServletRequest request, HttpServletResponse response)
			throws JsonParseException, JsonMappingException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return new ModelAndView("signin", "command", new User());
		} else {
			return showLoggedInAppIndex(session);
		}
	}
	
	/**
	 * This method for returning User object with requested id
	 * @param id
	 * @return User
	 * @throws JsonParseException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	private User getUserDetail(int id) throws JsonParseException, JsonMappingException, IOException {
		String url = "http://kchoam.cloudapp.net:8080/api-ok-bus/user/" + id;
		RestTemplate restTemplate = new RestTemplate();
		String jsonResponse = restTemplate.getForObject(url, String.class);
		ObjectMapper mapper = new ObjectMapper();
		
		User user = mapper.readValue(jsonResponse, User.class);
		return user;
	}
	
	/**
	 * This method for returning list of Demand object with requested user id
	 * @param id
	 * @return List of Demand
	 * @throws JsonParseException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	private Demand[] getDemandByUserId(int id) throws JsonParseException, JsonMappingException, IOException {
		String url = "http://kchoam.cloudapp.net:8080/api-ok-bus/demand?userId=" + id;
		RestTemplate restTemplate = new RestTemplate();
		String jsonResponse = restTemplate.getForObject(url, String.class);
		ObjectMapper mapper = new ObjectMapper();
		
		Demand[] list = mapper.readValue(jsonResponse, Demand[].class);
		return list;
	}
	
	/**
	 * This method for returning ModelAndView object containing full dashborad
	 * @param session
	 * @return ModelAndView
	 * @throws JsonParseException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	private ModelAndView showLoggedInAppIndex(HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		int userId = (Integer) session.getAttribute("loggedInUserId");
		/*
		 * Getting user data
		 */
		User user = getUserDetail(userId);
		ModelAndView model = new ModelAndView("app-index");
		model.addObject("userName", user.getName());
		
		/*
		 * Getting demand data 
		 */
		Demand[] listOfDemand = getDemandByUserId(userId);
		model.addObject("listOfDemand", listOfDemand);
		model.addObject("listOfDemand2", listOfDemand);
		return model;
	}
	
	@RequestMapping(value = "/pesan", method = RequestMethod.GET)
	public ModelAndView pesan(HttpServletRequest request) 
			throws JsonParseException, JsonMappingException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return new ModelAndView("signin", "command", new User());
		} else {
			int userId = (Integer) session.getAttribute("loggedInUserId");
			User user = getUserDetail(userId);
			ModelAndView model = new ModelAndView("app-pesanbus", "command", new NewDemand());
			model.addObject("userName", user.getName());
			model.addObject("userId", userId);
			
			return model;
		}
	}
	
	@RequestMapping(value = "/addOrder", method = RequestMethod.POST)
	public String addOrder(@ModelAttribute("ok-bus-app")NewDemand newDemand) {
		if (newDemand.getRentType().isEmpty() || newDemand.getPickAddress().isEmpty() ||
				newDemand.getDepartureDate().isEmpty() || newDemand.getDepartureTime().isEmpty() ||
				newDemand.getDestinationAddress().isEmpty() || newDemand.getReturnDate().isEmpty() ||
				newDemand.getReturnTime().isEmpty() || newDemand.getContact().isEmpty()) {
			return "redirect:pesan";
		}
		String url = "http://kchoam.cloudapp.net:8080/api-ok-bus/demand";
		MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
		map.add("userId", newDemand.getUserId());
		return newDemand.toString();
//		map.add("rentType", newDemand.getUserId());
//		
//		RestTemplate restTemplate = new RestTemplate();
//		restTemplate.postForObject(url, map, String.class);
//		return "redirect:dashboard";
	}
	
	@RequestMapping(value = "/detailPemesanan/{id}", method = RequestMethod.GET)
	public ModelAndView detailpemesanan(@PathVariable int id, HttpServletRequest request)
			throws JsonParseException, JsonMappingException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return new ModelAndView("signin", "command", new User());
		} else {
			// Getting the specified demand
			String url = "http://kchoam.cloudapp.net:8080/api-ok-bus/demand/" + id;
			RestTemplate restTemplate = new RestTemplate();
			String jsonResponse = restTemplate.getForObject(url, String.class);
			ObjectMapper mapper = new ObjectMapper();
			
			Demand demand = mapper.readValue(jsonResponse, Demand.class);
			
			// Getting the userId
			int userId = (Integer) session.getAttribute("loggedInUserId");
			User user = getUserDetail(userId);
			ModelAndView model = new ModelAndView("app-detailpemesanan");
			model.addObject("demand", demand);
			model.addObject("userName", user.getName());
			model.addObject("userId", userId);
			
			return model;
		}
	}
	
	@RequestMapping(value="/cancel/{demandId}", method = RequestMethod.GET)
	public String cancelDemand(@PathVariable int demandId) {
		String url = "http://kchoam.cloudapp.net:8080/api-ok-bus/demand?id="+demandId;
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.delete(url);
		return "redirect:../dashboard";
	}
	
	@RequestMapping(value = "/penawaran", method = RequestMethod.GET)
	public String penawaran() {
		return "app-daftarpenawaran";
	}
	
	@RequestMapping(value = "/detailpenawaran", method = RequestMethod.GET)
	public String detailpenawaran() {
		return "app-detailpenawaran";
	}
	
	@RequestMapping(value = "/pembayaran", method = RequestMethod.GET)
	public String pembayaran() {
		return "app-pembayaran";
	}
}
