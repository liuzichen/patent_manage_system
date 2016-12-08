package com.web.project.dao;

import java.util.*;

import com.web.project.model.Pet;

public interface PetDao {
	public Pet getPetByName(String name);
}
