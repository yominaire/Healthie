package com.web.weight.controller;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.weight.model.UserHistory;
import com.web.weight.model.Users;
import com.web.weight.repository.UserHistoryRepository;
import com.web.weight.repository.UsersRepository;
import com.web.weight.service.UserService;
import com.web.weight.util.DataValidation;
import com.web.weight.util.WebServiceUtils;

@Controller
@SessionAttributes("logedinUser")
public class AppController {
	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private UserHistoryRepository userHistoryRepository;
	
	@Autowired
	private WebServiceUtils webServiceUtils;

	@Autowired
	private DataValidation dataValidator;

	@Autowired
	private UserService userservice;

	@PostMapping("sendmail")
	String sendmail(@RequestParam String email, @RequestParam String msg, @RequestParam String subject, Model model) {

		// webServiceUtils.sendMail("", webServiceUtils.sendMail(email, msg, subject));
		model.addAttribute("msg", webServiceUtils.sendMail(email, msg, subject));
		return "Contact";
	}

	@GetMapping({ "/", "/index" })
	String index(Model model) {
		model.addAttribute("msg", "Welcome to Weight-balance.com");

		return "weight";
	}

	@GetMapping("members")
	String menu(Model model) {
		model.addAttribute("list", userservice.FindAll());

		return "members";
	}

	@GetMapping("give-me-index-page")
	String redirect(RedirectAttributes redirect) {
		redirect.addFlashAttribute("msg", "This redirect to home");

		return "redirect :/index";
	}

	@GetMapping("about")
	String about(Model model) {
		model.addAttribute("msg",
				"This is about us. We are commited to making you lose that weight and have your desire shape, your wellbeing"
						+ " is our concern");

		return "aboutUs";
	}
	@GetMapping("workout")
	String workout(Model model) {
		model.addAttribute("msg", "Nice to see you wanna workout");
		
		return "workout";
	}
	@GetMapping("diet")
	String diet(Model model) {
		model.addAttribute("msg", "Eating good is fun");
		
		return "diet";
	}
	@GetMapping("vegantofu")
	String vegantofu(Model model) {
		model.addAttribute("msg", "vegan mexican tofu Scramble");
		
		return "vegantofu";
	}
	
	@GetMapping("greenpepper")
	String greenpepper(Model model) {
		model.addAttribute("msg", "green pepper tofu scramble");
		
		return "greenpepper";
	}
	@GetMapping("coconut")
	String coconut(Model model) {
		model.addAttribute("msg", "coconut lime Quinoa Breakfast Bowl");
		
		return "coconut";
	}
	@GetMapping("pancake")
	String pancake(Model model) {
		model.addAttribute("msg", "coconut lime Quinoa Breakfast Bowl");
		
		return "pancake";
	}
	@GetMapping("cardio")
	String cardio(Model model) {
		model.addAttribute("msg", "Cardio workout baby!");
		
		return "cardio";
	}
	
	
	
	@GetMapping("fullbody")
	String fullbody(Model model) {
		model.addAttribute("msg", "full body workout!");
		
		return "fullbody";
	}

	@GetMapping("/profile")
	public String profile(Model model) {
		model.addAttribute("user", new Users());
		return "profile";
	}

	@PostMapping("/profile-update")
	public String updateprofile(@ModelAttribute Users userUpdate, @ModelAttribute("logedinUser") Users loggedInUser) {
		//TODO: get user in session
		//THEN: update the user with the new data
		Users savedUser = usersRepository.findByEmail(loggedInUser.getEmail());
		if(savedUser != null) {

			UserHistory userHistory = new UserHistory();
			userHistory.setAge(savedUser.getAge());
			userHistory.setHeight(savedUser.getHeight());
			userHistory.setWeight(savedUser.getWeight());
			userHistory.setUserId(savedUser.getId());
			userHistory.setBmi(userservice.calculateBMI(savedUser));
			userHistoryRepository.save(userHistory);
			
			
			savedUser.setHeight(userUpdate.getHeight());
			savedUser.setWeight(userUpdate.getWeight());
			savedUser.setGender(userUpdate.getGender());
			savedUser.setAge(userUpdate.getAge());
			usersRepository.save(savedUser);
		}
		
		
		return "redirect:/profile-dashboard";
	}

	@GetMapping("/profile-dashboard")
	public String profileDashboard(Model model, @ModelAttribute("logedinUser") Users loggedInUser) {
//		userservice.calculateBMI(savedUser);
		//set a model attribute of the calculated bmi and also saved user
		Users savedUser = userservice.findByEmail(loggedInUser.getEmail());
		if(savedUser != null) {
			model.addAttribute("bmi", userservice.calculateBMI(savedUser));
			model.addAttribute("userHistory", userHistoryRepository.findById(savedUser.getId()));
			return "profile-dashboard";
		}
		else return "redirect:/login";
		
	}

	@GetMapping("contact")
	String contact(Model model) {
		model.addAttribute("msg", "You can call us any time 24/7, Sunday through Saturday");

		return "Contact";
	}

	@GetMapping("email-{id}-{name}")
	String email(@PathVariable String id, @PathVariable String name, Model model) {
		model.addAttribute("msg", id + "Name is " + "" + name);

		return "Contact";
	}

	@GetMapping("name")
	String getname(@RequestParam String id, Model model) {
		model.addAttribute("msg", "id");
		return "weight";

	}

	@GetMapping("getname")
	String Jegede(@RequestParam String name, Model model) {
		model.addAttribute("msg", "Name is " + "" + name);
		return "weight";
	}

	@GetMapping("login")
	String login(Model model) {
		model.addAttribute("msg", "login");
		return "login";
	}

	@GetMapping("edituser-{id}")
	String edit(@PathVariable long id, Model model) {
		model.addAttribute("msg", "update");
		// Users user=new Users();
		model.addAttribute("user", usersRepository.findById(id).get());
		return "update";
	}

	@PostMapping("update")
	String update(@ModelAttribute Users user, RedirectAttributes redirect) {

		try {
			Users usr = usersRepository.findById(user.getId()).get();
			
			UserHistory userHistory = new UserHistory();
			userHistory.setAge(usr.getAge());
			userHistory.setHeight(usr.getHeight());
			userHistory.setWeight(usr.getWeight());
			userHistory.setUserId(usr.getId());
			userHistory.setBmi(userservice.calculateBMI(usr));
			userHistoryRepository.save(userHistory);
			
			usr.setEmail(user.getEmail());
			usr.setFname(user.getFname());
			usr.setLname(user.getFname());
			usr = usersRepository.save(usr);
			
			redirect.addAttribute("Success", "Update success for " + user.getLname());
		} catch (Exception e) {
			e.printStackTrace();
			redirect.addAttribute("error", "Update Fail for " + user.getLname());
		}

		return "redirect:/weight";
	}

	@GetMapping("deleteuser-{id}")
	String delet(@PathVariable long id, RedirectAttributes redirect) {
		try {
			Users user = usersRepository.findById(id).get();
			usersRepository.delete(user);

		} catch (Exception e) {

			// TODO Auto-generated catch block
			e.printStackTrace();

			redirect.addFlashAttribute("error", "unexpected error");
		}
		return "redirect:/weight";
	}

	@PostMapping("login")
	String login(@ModelAttribute Users user, Model model) {
		Users usr = userservice.findByEmail(user.getEmail());
		if (usr != null && user.getPassword().equals(usr.getPassword())) {
			model.addAttribute("success", "Login Success");
			model.addAttribute("logedinUser", usr);
			
			return "redirect:/profile";
		} else {
			model.addAttribute("error", "Invalid credentials ");
		}
		return "login";
	}

	@PostMapping("getmail")
	String Abayomi(@RequestParam String email, @RequestParam String name, RedirectAttributes redirect) {
		redirect.addAttribute("msg", "email is " + "" + email + "" + name);
		return "profile";
	}

	@GetMapping("register")
	String register(Model model) {
		model.addAttribute("msg", "Register");
		model.addAttribute("users", new Users());
		return "register";

	}

	@GetMapping("/logout")
	public String logout(Model model, WebRequest request, SessionStatus status, RedirectAttributes redirect)
			throws IOException {
		status.setComplete();
		request.removeAttribute("logedinUser", WebRequest.SCOPE_SESSION);
		redirect.addFlashAttribute("success", "You have been signed out");
		return "redirect:/login";
	}

	@ResponseBody
	@GetMapping("/hello")
	public String hellow() {
		return "Hellow from Contoller";
	}

	@PostMapping("editrole")
	String addrole(@RequestParam long id, @RequestParam String role, RedirectAttributes red) {
		try {
			Users usr = usersRepository.findById(id).get();
			usr.setRole(role);
			usersRepository.save(usr);
			red.addFlashAttribute("success", usr.getFname() + " has been asigned " + role + " role");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/index";
	}

	@PostMapping("register")
	String signup(@ModelAttribute Users user, BindingResult result, RedirectAttributes redirect, Model model) {

		try {
			dataValidator.validate(user, result);
			if (result.hasErrors()) {
				model.addAttribute("msg", "Register");
				return "register";
			}
				String msg="Thank you for registering with us, Thanks.";
				user.setCreatedDate(new Date());
				user.setRole("USER");
				usersRepository.save(user);
				webServiceUtils.sendMail(user.getEmail(), msg, "Registration");
				redirect.addFlashAttribute("success", "Registration Success Confirmation email sent to "+ user.getEmail());
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/login";

	}

	@PostMapping("search")
	String search(@RequestParam String lname, Model model) {
		try {
			model.addAttribute("list", usersRepository.findByName(lname));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("error", "unexpected error occurred");
		}

		return "members";
	}

	@GetMapping("deleteimage")
	String removeImage(RedirectAttributes red, @RequestParam long id, @RequestParam String image, Model model) {

		try {
			webServiceUtils.removefiles(id, image);
			red.addFlashAttribute("success", "Image deleted");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/profile";
	}

	@PostMapping("looking")
	String lookup(@RequestParam String email, @RequestParam String lname, Model model) {
		try {
			model.addAttribute("list", usersRepository.findByNameOrEmail(lname, email));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("error", "unexpected error occrred");
		}

		return "members";
	}

	@ModelAttribute("user")
	public Users user() {
		return new Users();
	}
}
