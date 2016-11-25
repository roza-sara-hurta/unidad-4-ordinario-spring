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

@Entity(name="foods")
public class Food implements Serializable {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="name_saucer",length=45)
	private String nameSaucer;
	@Column(length=45)
	private String chef;
    @Column (length=4)
	private int price;
    @Temporal(TemporalType.DATE)
	@Column(name="date_order")
    private Date dateOrder;
    
    
	public Food() {
		this( "","",0,new Date());
	}


	public Food(String nameSaucer, String chef, int price, Date dateOrder) {
		super();
		this.nameSaucer = nameSaucer;
		this.chef = chef;
		this.price = price;
		this.dateOrder = dateOrder;
	}


	@Override
	public String toString() {
		return "Food [id=" + id + ", nameSaucer=" + nameSaucer + ", chef=" + chef + ", price=" + price + ", dateOrder="
				+ dateOrder + "]";
	}


	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNameSaucer() {
		return nameSaucer;
	}


	public void setNameSaucer(String nameSaucer) {
		this.nameSaucer = nameSaucer;
	}


	public String getChef() {
		return chef;
	}


	public void setChef(String chef) {
		this.chef = chef;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public Date getDateOrder() {
		return dateOrder;
	}


	public void setDateOrder(Date dateOrder) {
		this.dateOrder = dateOrder;
	}


	
}
