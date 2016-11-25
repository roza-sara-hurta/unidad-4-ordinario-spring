package boot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.model.Book;
import boot.service.BookService;


@Controller
public class BookController {

	@Autowired
	private BookService bookService;
	

	

	@GetMapping("/books")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "books";
	}
//
	@GetMapping("/all-books")
	public String allBooks(HttpServletRequest request) {
		request.setAttribute("books", bookService.findAll());
		request.setAttribute("mode", "MODE_BOOKS");
		return "books";
	}

	@GetMapping("/new-book")
	public String newBook(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_NEW");
		return "books";
	}

	
	@PostMapping("/save-book")
	public String saveBook(@ModelAttribute Book book, 
			BindingResult bindingResult, HttpServletRequest request) {
		bookService.save(book);
		request.setAttribute("books", bookService.findAll());
		request.setAttribute("mode", "MODE_BOOKS");		
		return "books";
	}
	
	@GetMapping("/update-book")
	public String updateBook(@RequestParam int idBook, HttpServletRequest request) {
	request.setAttribute("book", bookService.finOne(idBook));
		request.setAttribute("mode", "MODE_UPDATE");
		return "books";
	}	
	
	
	@GetMapping("/delete-book")
	public String deleteTask(@RequestParam int idBook, HttpServletRequest request) {
    bookService.delete(idBook);
	request.setAttribute("books", bookService.findAll());
		request.setAttribute("mode", "MODE_BOOKS");
		return "books";
	}	

	
}
