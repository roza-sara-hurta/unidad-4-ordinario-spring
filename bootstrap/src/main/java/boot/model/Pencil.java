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

@Entity(name="pencils")
public class Pencil implements Serializable {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=45)
	private String brand;
	@Column(length=45)
	private String color;
	@Column(length=45)
	
	private String size;
    @Column ()
	private int price;
    
   

public  Pencil (){
	
			this( "","","",0);
		}



public Pencil( String brand, String color, String size, int price) {
	super();
	
	this.brand = brand;
	this.color = color;
	this.size = size;
	this.price = price;
}



@Override
public String toString() {
	return "Pencil [id=" + id + ", brand=" + brand + ", color=" + color + ", size=" + size + ", price=" + price + "]";
}



public int getId() {
	return id;
}



public void setId(int id) {
	this.id = id;
}



public String getBrand() {
	return brand;
}



public void setBrand(String brand) {
	this.brand = brand;
}



public String getColor() {
	return color;
}



public void setColor(String color) {
	this.color = color;
}



public String getSize() {
	return size;
}



public void setSize(String size) {
	this.size = size;
}



public int getPrice() {
	return price;
}



public void setPrice(int price) {
	this.price = price;
}



}
