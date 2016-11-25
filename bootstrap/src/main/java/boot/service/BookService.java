package boot.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import boot.dao.BookRepository;
import boot.dao.DeptManagerRepository;
import boot.model.Book;
import boot.model.DeptManager;

@Service
@Transactional
public class BookService {
	private final BookRepository bookRepository;

	public BookService(BookRepository bookRepository) {
		super();
		this.bookRepository = bookRepository;
	}

	public List<Book> findAll() {
		List<Book> books = new ArrayList<Book>();
		for (Book book : bookRepository.findAll()) {
			books.add(book);
		}
		return books;
	}

	public void save(Book book) {
		bookRepository.save(book);
	}

	public void delete(int idBook) {
		bookRepository.delete(idBook);
	}

	public Book finOne(int idBook) {
		return bookRepository.findOne(idBook);
	}
}
