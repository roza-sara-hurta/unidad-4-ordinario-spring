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

@Entity(name="products")
public class Product implements Serializable {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(length=45)
	private String name;
	
	@Column(length=45)
	private String supplier;
	
	
	@Column(length=45)
	private String category;
	
	
	@Column(length=5)
	private int price;
	
	



public  Product() {
this("","","",0);
}





public Product( String name, String supplier, String category, int price) {
	super();

	this.name = name;
	this.supplier = supplier;
	this.category = category;
	this.price = price;
}





@Override
public String toString() {
	return "Product [id=" + id + ", name=" + name + ", supplier=" + supplier + ", category=" + category + ", price="
			+ price + "]";
}





public int getId() {
	return id;
}





public void setId(int id) {
	this.id = id;
}





public String getName() {
	return name;
}





public void setName(String name) {
	this.name = name;
}





public String getSupplier() {
	return supplier;
}





public void setSupplier(String supplier) {
	this.supplier = supplier;
}





public String getCategory() {
	return category;
}





public void setCategory(String category) {
	this.category = category;
}





public int getPrice() {
	return price;
}





public void setPrice(int price) {
	this.price = price;
}


}

