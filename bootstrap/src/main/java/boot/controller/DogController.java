package boot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.model.Dog;
import boot.service.DogService;

@Controller
public class DogController {
	
	@Autowired
	private DogService dogService ;

	@GetMapping("/dogs")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "dogs";
	}
//

	
	
	
	@GetMapping("/all-dogs")
	public String allDogs(HttpServletRequest request) {
		request.setAttribute("dogs", dogService.findAll());
		request.setAttribute("mode", "MODE_DOGS");
		return "dogs";
	}

	@GetMapping("/new-dog")
	public String newDog(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_NEW");
		return "dogs";
	}

	
	@PostMapping("/save-dog")
	public String saveDog(@ModelAttribute Dog dog, 
			BindingResult bindingResult, HttpServletRequest request) {
		dogService.save(dog);
		request.setAttribute("dogs", dogService.findAll());
		request.setAttribute("mode", "MODE_DOGS");		
		return "dogs";
	}
	
	@GetMapping("/update-dog")
	public String updateDog(@RequestParam int id, HttpServletRequest request) {
	request.setAttribute("dog", dogService.finOne(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "dogs";
	}	
	
	
	@GetMapping("/delete-dog")
	public String deleteDog(@RequestParam int id, HttpServletRequest request) {
   dogService.delete(id);
	request.setAttribute("dogs", dogService.findAll());
		request.setAttribute("mode", "MODE_DOGS");
		return "dogs";
	}	

	
}
