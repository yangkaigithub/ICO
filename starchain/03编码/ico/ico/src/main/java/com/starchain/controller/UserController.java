package com.starchain.controller;

import com.starchain.po.User;
import com.starchain.service.Userservice;
import org.apache.commons.net.ntp.TimeStamp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 人员管理控制器 
 * @author Harry
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	private Logger logger = LoggerFactory.getLogger(UserController.class);

	@Resource
	private Userservice userservice;

	/**
	 * 注册用户操作
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "reg", method = RequestMethod.GET)
	public String reguser(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "/system/register";
	}

//	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
//	public @ResponseBody String reguser(HttpServletRequest request, HttpServletResponse response, Model model){
//		logger.info("info132");
//		logger.debug("debug132");
//		logger.error("error132");
//		try {
//			userservice.addUser();
//		} catch (Exception e) {
//			logger.error("error{0}",e);
//		}
//		return "succcess";
//	}


	@RequestMapping(value = "reguser")
	public @ResponseBody String reguser(){
		User user = new User();
		TimeStamp timeStamp = new TimeStamp(System.nanoTime());
		timeStamp.getDate().toString();
		user.setUserId("2397912739810237173e");
		user.setAccountMail("779791238@qq.com");
		user.setPwd("123456");
		user.setAccountPhone("13912345678");
		user.setUserAlias("yk");
		try {
			userservice.addUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "succcess";
	}
}
