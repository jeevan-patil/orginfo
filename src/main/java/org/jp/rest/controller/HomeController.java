package org.jp.rest.controller;

import java.util.List;

import org.jp.rest.domain.User;
import org.jp.rest.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author jeevan
 * @date 21-Feb-2015 10:38:02 pm
 * @version 
 *
 */
@Controller
public class HomeController {

	private static final Logger _log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<User> users = userService.listAllUsers();
		model.addAttribute("users", users);
		return "home";
	}
	
}
