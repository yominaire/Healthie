package com.web.weight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.weight.model.Users;
import com.web.weight.repository.UsersRepository;
import com.web.weight.util.WebServiceUtils;

@Controller
public class FileUpload {
	
	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private WebServiceUtils webServiceUtils;
	



@GetMapping("setasprofile")
String setprofile(RedirectAttributes red, 
@RequestParam String email, @RequestParam String image, Model model) {     
    
    try { 
    Users user= usersRepository.findByEmail(email);
    user.setImage(image);
    usersRepository.save(user);
    red.addFlashAttribute("success", "Image set to "+ image);
} catch (Exception e) {
e.printStackTrace();
}
 
    return "redirect:/index"; 
}
	
	@PostMapping("uploadMultipleFiles")
    public String uploadMultipleFiles(Model model, @RequestParam long id,@RequestParam("uploadingFiles") MultipartFile[] files){
      try {

  if(webServiceUtils.multiplesave(files, id)=="Success") {
  model.addAttribute("msg", files.length+ " Files uploaded<br>"); }
  else {
  model.addAttribute("msg", " Please select files<br>"); 
  } 
  webServiceUtils.getFiles(model, id);
      
    } catch (Exception e) {
model.addAttribute("error",  " unxpected error<br>"); 
    
e.printStackTrace();
}    
        return "profile";
    }

}
