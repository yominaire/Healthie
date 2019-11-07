package com.web.weight.service;

import java.util.List;

import com.web.weight.model.Users;

public interface UserService {
	
	Users findByEmail(String email);
	Users findById(long id);
	List<Users> FindAll();
	void update(Users user);
	void save(Users user);
	void delete (long id);
	Double calculateBMI(Users user);

}
