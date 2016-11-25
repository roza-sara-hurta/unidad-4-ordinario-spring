package boot.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.model.DeptManager;
import boot.service.DeptManagerService;

@Controller
public class DeptManagerController {
	@Autowired
	private DeptManagerService deptManagerService;

	@GetMapping("/deptManagers")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "deptManagers";
	}

	//
	@GetMapping("/all-deptManagers")
	public String allDeptManagers(HttpServletRequest request) {
		request.setAttribute("deptManagers", deptManagerService.findAll());
		request.setAttribute("mode", "MODE_DEPTMANAGERS");
		return "deptManagers";
	}

	@GetMapping("/new-deptManager")
	public String newDeptManager(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_NEW");
		return "deptManagers";
	}

	@PostMapping("/save-deptManager")
	public String saveDeptManager(@ModelAttribute DeptManager deptManager, BindingResult bindingResult,
			HttpServletRequest request) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date toDate = new Date();
		Date fromDate = new Date();
		try {
			toDate = format.parse(request.getParameter("toDate"));
			fromDate = format.parse(request.getParameter("fromDate"));

		} catch (ParseException e) {
			e.printStackTrace();
		}

		deptManager.setToDate(toDate);
		deptManager.setFromDate(fromDate);
		
		
		deptManagerService.save(deptManager);
		request.setAttribute("deptManagers", deptManagerService.findAll());
		request.setAttribute("mode", "MODE_DEPTMANAGERS");
		return "deptManagers";
	}

	@GetMapping("/update-deptManager")
	public String updateDeptManager(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("deptManager", deptManagerService.finOne(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "deptManagers";
	}

	@GetMapping("/delete-deptManager")
	public String deleteDeptManager(@RequestParam int id, HttpServletRequest request) {
		deptManagerService.delete(id);
		request.setAttribute("deptManagers", deptManagerService.findAll());
		request.setAttribute("mode", "MODE_DEPTMANAGERS");
		return "deptManagers";
	}

}
