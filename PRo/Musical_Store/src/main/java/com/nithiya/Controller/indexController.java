
package com.nithiya.Controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nithiya.BackendMusical.Dao.UserDao;

import com.nithiya.BackendMusical.Model.UserModel;

@Controller
public class indexController {
	
	@Autowired
	public UserDao user1;

	
	@RequestMapping( "/")
	public ModelAndView welcome() 
	{
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@RequestMapping(value="/regs")
	public ModelAndView regpage()
	{
		ModelAndView m2=new ModelAndView("signup");
		return m2;
	}
	@RequestMapping(value ="/signup")
	public ModelAndView addUser(HttpServletRequest request)
	{
		int u_id=Integer.parseInt(request.getParameter("uid"));
		String u_name=request.getParameter("username");
		String u_pass=request.getParameter("userpass");
		String u_mail=request.getParameter("email");
		String u_age=request.getParameter("age");
		String u_gen=request.getParameter("gen");
		UserModel u=new UserModel();
		u.setUser_Id(u_id);
		u.setUserName(u_name);
		u.setUserPassword(u_pass);
		u.setUserAge(u_age);
		u.setUser_Gender(u_gen);
		u.setUserMailId(u_mail);
		u.setUserRole("User");
		user1.addUser(u);
		System.out.println(u.getUser_Id());

		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@RequestMapping(value="/login")
	public ModelAndView loginpage()
	{
		ModelAndView m2=new ModelAndView("login");
		return m2;
	}
	}


