package com.web.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

 
@Controller
@RequestMapping("/test")
public class HelloSpringController {
    String message = "Welcome to Spring MVC!";
 
    @RequestMapping("/hello")
    public String showMessage(@RequestParam(value = "name") String name,ModelMap map) {
    	map.put("message", message);
    	map.put("name", name);
        return "hellospring";
    }
}