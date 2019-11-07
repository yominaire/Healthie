package com.web.weight;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.client.RestClientException;

import com.web.weight.model.Users;
import com.web.weight.repository.UsersRepository;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class WeightApplicationTests {

		private final Logger log = LoggerFactory.getLogger(WeightApplicationTests.class);
		
		@Autowired UsersRepository usersRepository; 
		
		@LocalServerPort
		private long port;
		
		@Autowired
		private TestRestTemplate restTemplate;
		
		@Test
		public void contextLoads() {
		log.info("############ users "+usersRepository.findAll());
		}
		
		@Test
		public void getUsers() {
		String url="http://localhost:8500/carsale/api/users";
		@SuppressWarnings({ "rawtypes", "unchecked" })
		List<ArrayList> getList= restTemplate.getForObject(url, List.class);  
		log.info("Request to get all Users: {}", getList);
		}
		
		@Test
		public void hellow() throws RestClientException, MalformedURLException {
		ResponseEntity<String> response=restTemplate.getForEntity
		(new URL("http://localhost:"+port+"/carsale/hello").toString(), String.class);
		assertEquals("Hellow from Contoller", response.getBody());
		log.info("Request to hello {}", response.getBody());
		 
		}
		
		@Test
		public void getUser() throws RestClientException, MalformedURLException {
		String url="http://localhost:"+port+"/carsale/api/user/5";
		ResponseEntity<Users> response=restTemplate.getForEntity
		(url, Users.class);
		assertEquals("oyo@email.com", response.getBody().getEmail());
		log.info("Request to get all Users: {}", response);
		 
		}
		
		@Test
		public void getEmail() {    
		
		  Users user=usersRepository.findByEmail("oyo@email.com"); 
		  log.info("############ user entity "+user.toString());  
		  assertEquals("oyo@email.com", user.getEmail()); 
		  assertEquals("oyo", user.getFname()); 
		  assertEquals("oyo", user.getLname());
		  assertNotNull(user.getFname());
		 
		}

}










