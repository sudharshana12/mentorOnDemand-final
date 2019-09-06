package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.CoursesDao;
import com.example.dao.UserDao;
import com.example.models.Courses;

@Controller
public class AdminController {
	@Autowired
	UserDao userdao;
	@Autowired
	CoursesDao coursesdao;
	
	/*@ModelAttribute("tech")
	public List<String> setValues()
	{
		List<String> tech = new ArrayList<>();
		//List<String> coursename = coursesdao.getCoursename();
		//tech.addAll(coursename);
		tech.add("adobe");
		return tech;
	}
	*/
	
	
	
	
	
	@RequestMapping(value="/blockUser",method = RequestMethod.GET)
	public ModelAndView blockUserlist()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("admin-block-page");
	    mv.addObject("userlist", userdao.findAll());
		return mv;
		
	}
	
	@RequestMapping(value="/blockAction",method = RequestMethod.GET)
	public String blockUser(@RequestParam("id")int id)
	{
		int userId = id;
		userdao.setBlockStatus(userId);
		return "admin-landing-page";
	}
	
	@RequestMapping(value="/unblockAction",method = RequestMethod.GET)
	public String unblockUser(@RequestParam("id")int id)
	{
		int userId = id;
		userdao.setUnblockStatus(userId);
		return "admin-landing-page";
	}
	
	@RequestMapping("/addtech")
	public ModelAndView addtechform(ModelAndView model)
	{
		model = new ModelAndView("add-tech");
		Courses course = new Courses();
		model.addObject("course",course);
		return model;
	}
	
	@RequestMapping(value="/addtech",method=RequestMethod.POST)
	public String addtech(Courses course)
	{
		coursesdao.save(course);
		return "admin-landing-page";
	}
	
	@RequestMapping("/edittech")
	public String edittechform(@RequestParam("id")int cid,Model model)
	{
		Courses course = coursesdao.findBycourseid(cid);
		model.addAttribute("course",course);
		return "edit-tech";
	}
	
	@RequestMapping(value="/edittech",method=RequestMethod.POST)
	public String edittech(@RequestParam("id")int cid,@ModelAttribute("course")Courses course)
	{
		Courses coursedetails = coursesdao.findBycourseid(cid);
		coursedetails.setCourseName(course.getCourseName());
		coursedetails.setRate(course.getRate());
		coursesdao.save(coursedetails);
		return "admin-landing-page";
	}
	
	@RequestMapping("/viewtech")
	public ModelAndView viewtech(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("view-tech");
		mv.addObject("techlist",coursesdao.findAll());
		return mv;
	}
	


}
