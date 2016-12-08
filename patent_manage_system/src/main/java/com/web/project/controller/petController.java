package com.web.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.project.model.Pet;
import com.web.project.service.impl.PetServiceImpl;

 
@Controller
@RequestMapping("/test")
public class petController {
    String message = "Welcome to Spring MVC!";
    @Autowired
    private PetServiceImpl petServiceImpl;
    
    @RequestMapping("/hello")
    public String showMessage(@RequestParam(value = "name") String name,ModelMap model) {
    	Pet pet=petServiceImpl.getPetByName("xiaogou");
    	model.put("message", message);
    	model.put("name", name);    	
    	model.put("name",pet.getName());
    	model.put("describe", pet.getDescribe());
        return "views/hellospring";
    }
}