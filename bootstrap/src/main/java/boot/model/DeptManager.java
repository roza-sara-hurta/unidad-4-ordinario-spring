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

@Entity(name = "dept_managers")

public class DeptManager implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int id;

	@Column(name = "emp_no", length = 10)
	private int empNo;

	@Temporal(TemporalType.DATE)
	@Column(name = "from_date")
	private Date fromDate;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "to_date")
	private Date toDate;

	public DeptManager() {

		this(0, new Date(),new Date());

	}

	public DeptManager( int empNo, Date fromDate, Date toDate) {
		super();
		
		this.empNo = empNo;
		this.fromDate = fromDate;
		this.toDate = toDate;
	}

	@Override
	public String toString() {
		return "DeptManager [id=" + id + ", empNo=" + empNo + ", fromDate=" + fromDate + ", toDate=" + toDate + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	

}