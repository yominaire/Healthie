package com.web.weight.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.weight.model.Users;
import com.web.weight.repository.UsersRepository;

@Service
@Transactional

public class UserServiceImpl implements UserService {
	
	@Autowired
	private UsersRepository usersRepository;

	@Override
	public Users findByEmail(String email) {
		return usersRepository.findByEmail(email);
		
	}

	@Override
	public Users findById(long id) {
		return usersRepository.findById(id).get();
		
	}

	@Override
	public List<Users> FindAll() {
		return usersRepository.findAll();
		
	}

	@Override
	public void update(Users user) {
		Users usr= findById (user.getId());
		if(usr!=null) {
			usr.setFname(user.getFname());
			usr.setLname(user.getLname());
			usr.setEmail(user.getEmail());
		}
	}

	@Override
	public void save(Users user) {
		usersRepository.save(user);
		
		
	}

	@Override
	public void delete(long id) {
		usersRepository.delete(findById(id));
		
	}

	@Override
	public Double calculateBMI(Users user) {
		if(user.getWeight() == null || user.getHeight() == 0) return 0.0;

		Double bmi = 0.0;
		bmi =(703.0 * user.getWeight() / ( (user.getHeight()*12) * (user.getHeight()*12)));

		//bmi = (weight * 703) / (height * height);
		return bmi;
	}
	
	

}
