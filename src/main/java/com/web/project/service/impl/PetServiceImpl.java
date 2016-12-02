package com.web.project.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.PetDao;
import com.web.project.model.Pet;
import com.web.project.service.PetService;

@Service
public class PetServiceImpl implements PetService{

	@Autowired
	private PetDao petDao;
	
	public void setPetDao(PetDao petDao){
		this.petDao=petDao;
	}
	public Pet getPetByName(String name){
		return petDao.getPetByName(name);
	}
}
