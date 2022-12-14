package org.ideoholic.curium.model.attendance.dto;

// default package
// Generated 16 Jan, 2018 9:20:32 PM by Hibernate Tools 4.0.0

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Holidaysmaster generated by hbm2java
 */
@Entity
@Table(name = "att_holidaysmaster")
public class Holidaysmaster implements java.io.Serializable {

	private Integer shid;
	private Date fromdate;
	private Date todate;
	private String holidayname;
	private String academicyear;
	private int branchid;
	private int userid;

	public Holidaysmaster() {
	}

	public Holidaysmaster(Date fromdate, Date todate, String holidayname,
			String academicyear, int branchid, int userid) {
		this.fromdate = fromdate;
		this.todate = todate;
		this.holidayname = holidayname;
		this.academicyear = academicyear;
		this.branchid = branchid;
		this.userid = userid;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "shid", unique = true, nullable = false)
	public Integer getShid() {
		return this.shid;
	}

	public void setShid(Integer shid) {
		this.shid = shid;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "fromdate", nullable = false, length = 10)
	public Date getFromdate() {
		return this.fromdate;
	}

	public void setFromdate(Date fromdate) {
		this.fromdate = fromdate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "todate", nullable = false, length = 10)
	public Date getTodate() {
		return this.todate;
	}

	public void setTodate(Date todate) {
		this.todate = todate;
	}

	@Column(name = "holidayname", nullable = false, length = 40)
	public String getHolidayname() {
		return this.holidayname;
	}

	public void setHolidayname(String holidayname) {
		this.holidayname = holidayname;
	}

	@Column(name = "academicyear", nullable = false, length = 10)
	public String getAcademicyear() {
		return this.academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}
	
	
	@Column(name = "branchid")
	public int getBranchid() {
	return branchid;
	}

	public void setBranchid(int branchid) {
	this.branchid = branchid;
	}
	
	public int getUserid() {
		return userid;
}

public void setUserid(int userid) {
	this.userid = userid;
}

}
