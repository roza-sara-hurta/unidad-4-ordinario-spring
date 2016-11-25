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


@Entity(name="dogs")
public class Dog implements Serializable {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=45)
	private String name;
	@Column(length=45)
	private String description;
	@Temporal(TemporalType.DATE)
	@Column(name="date_created")
	private Date date_Created;
	private boolean finished;

	public Dog() {
		this( "","",new Date(),false);
}


public Dog( String name, String description, Date date_Created, boolean finished) {
		super();
	
		this.name = name;
		this.description = description;
		this.date_Created = date_Created;
		this.finished = finished;
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


public String getDescription() {
	return description;
}


public void setDescription(String description) {
	this.description = description;
}


public Date getDate_Created() {
	return date_Created;
}


public void setDate_Created(Date dateCreated) {
	this.date_Created = dateCreated;
}


public boolean isFinished() {
	return finished;
}


public void setFinished(boolean finished) {
	this.finished = finished;
}
	




@Override
public String toString() {
	return "Dog [id=" + id + ", name=" + name + ", description=" + description + ", dateCreated=" + date_Created
			+ ", finished=" + finished + "]";
}
}

