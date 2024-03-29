package com.application.restControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.application.beans.Profile;
import com.application.services.ProfileService;

@RestController
@RequestMapping("/api")
public class ProfileRESTController {
	
	@Autowired
	ProfileService profileService;
	
	@PostMapping("/profiles")
	public Profile addProfile(@RequestBody Profile profile) {
		profileService.addProfile(profile);
		return profile;
	}
	
	@PutMapping("/profiles/{id}")
	public Profile updateProfile(@PathVariable("id") int id,@RequestBody Profile profile) {
		profile.setId(id);
		profileService.addProfile(profile);
		return profile;
	}
	
	@GetMapping("/profiles/{id}")
	public Object getProfile(@PathVariable("id") int id) {
		return profileService.getProfile(id);
	}
	
	// This is Cross-origin enabling (CORS)
	// Normally scripts cannot access REST APIs
	// due to security reasons, but this allows it
	@GetMapping("/profiles")
	public java.util.List<Profile> listProfiles() {
		return profileService.getProfileList();
	}
}
