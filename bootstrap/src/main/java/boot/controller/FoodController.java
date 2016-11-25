package boot.controller;




import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.model.Food;
import boot.service.FoodService;




@Controller
public class FoodController {
	
	@Autowired
	private FoodService foodService ;

	@GetMapping("/foods")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "foods";
	}
//

	
	
	
	@GetMapping("/all-foods")
	public String allFoods(HttpServletRequest request) {
		request.setAttribute("foods", foodService.findAll());
		request.setAttribute("mode", "MODE_FOODS");
		return "foods";
	}

	@GetMapping("/new-food")
	public String newFood(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_NEW");
		return "foods";
	}

	
	@PostMapping("/save-food")
	public String saveFood(@ModelAttribute Food food, 
			BindingResult bindingResult, HttpServletRequest request) {
		foodService.save(food);
		request.setAttribute("foods", foodService.findAll());
		request.setAttribute("mode", "MODE_FOODS");		
		return "foods";
	}
	
	@GetMapping("/update-food")
	public String updateFood(@RequestParam int id, HttpServletRequest request) {
	request.setAttribute("food", foodService.finOne(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "foods";
	}	
	
	
	@GetMapping("/delete-food")
	public String deleteFood(@RequestParam int id, HttpServletRequest request) {
		foodService.delete(id);
	request.setAttribute("foods", foodService.findAll());
		request.setAttribute("mode", "MODE_FOODS");
		return "foods";
	}	

	
}
