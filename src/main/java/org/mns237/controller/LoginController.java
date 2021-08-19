package org.mns237.controller;
import javax.validation.Valid;

import org.mns237.entity.Users;
import org.mns237.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200")
public class LoginController{
	@Autowired
	private UserService userService;

	public LoginController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/")
	public String appStart(){
		return " welcome to my wep app ";
	}

	@GetMapping("/home")
	public String homePage(){
		return " welcome to the home page. We hope ou will enjoy ";
	}

	/*@GetMapping("/admin/login")
	public String loginApp(){
		return " ";
	}*/

	@GetMapping("/register")
	public String appRegister(){
		Users user = new Users();

		return "adding a new user ........";
	}

	@PostMapping("/register")
	public String createNewUser(@Valid Users user, BindingResult bindingResult){
		Users userExists = userService.findUserByEmail(user.getEmail());
		if(userExists != null){
			bindingResult
			.rejectValue("email", "error.user", "there is already a user registered with the email provided");

		}
		if(bindingResult.hasErrors()){
			System.out.println("System Error please try again");
		}else{
			userService.saveUser(user);
			System.out.println("user has been registered successfully");
		}
		return "waiting for request........";
	}

	@GetMapping("/admin/login")
	public String adminHome(){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Users user = userService.findUserByEmail(auth.getName());
		System.out.print("Welcome" + user.getUsername() + " " + user.getfName() + " " + "( " + user.getEmail()+ ")" );
		System.out.println("Content Available Only for Users with Admin Role");

		return "Welcome admin " + user.getUsername();
	}

}