package boot.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="books")
public class Book implements Serializable{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_book")
	private int idBook;
	@Column(length=20)
	private String title;
	@Column(length=20)
	private String editorial;
	@Column(length=20)
	private String price;
	@Column(length=20)
	private String color;
	@Column(length=20)
	private String author;
	
	
	
	
	
	
	
	public Book() {
	this(0,"","","","","");
	}







	public Book(int idBook, String title, String editorial, String price, String color, String author) {
		super();
		this.idBook = idBook;
		this.title = title;
		this.editorial = editorial;
		this.price = price;
		this.color = color;
		this.author = author;
	}







	public int getIdBook() {
		return idBook;
	}







	public void setIdBook(int idBook) {
		this.idBook = idBook;
	}







	public String getTitle() {
		return title;
	}







	public void setTitle(String title) {
		this.title = title;
	}







	public String getEditorial() {
		return editorial;
	}







	public void setEditorial(String editorial) {
		this.editorial = editorial;
	}







	public String getPrice() {
		return price;
	}







	public void setPrice(String price) {
		this.price = price;
	}







	public String getColor() {
		return color;
	}







	public void setColor(String color) {
		this.color = color;
	}







	public String getAuthor() {
		return author;
	}







	public void setAuthor(String author) {
		this.author = author;
	}







	@Override
	public String toString() {
		return "Book [idBook=" + idBook + ", title=" + title + ", editorial=" + editorial + ", price=" + price
				+ ", color=" + color + ", author=" + author + "]";
	}
	
	
	
	
	
}
