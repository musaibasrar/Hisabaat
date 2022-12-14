package org.ideoholic.curium.model.periods.dto;

// default package
// Generated 7 Apr, 2018 6:09:10 PM by Hibernate Tools 4.0.0

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Perioddetails generated by hbm2java
 */
@Entity
@Table(name = "perioddetails")
public class Perioddetails implements java.io.Serializable {

	private Integer idperioddetails;
	private String periods;
	private Integer periodmasterid;
	private String timings;
	private String days;
	private String subject;
	private String staff;
	private int branchid;
	private int userid;

	public Perioddetails() {
	}

	public Perioddetails(String periods, String timings, String days, Integer periodmasterid, String subject, String staff,
			int branchid, int userid) {
		this.periods = periods;
		this.timings = timings;
		this.days = days;
		this.periodmasterid = periodmasterid;
		this.subject = subject;
		this.staff = staff;
		this.branchid = branchid;
		this.userid = userid;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idperioddetails", unique = true, nullable = false)
	public Integer getIdperioddetails() {
		return this.idperioddetails;
	}

	public void setIdperioddetails(Integer idperioddetails) {
		this.idperioddetails = idperioddetails;
	}

	@Column(name = "periods", length = 45)
	public String getPeriods() {
		return this.periods;
	}

	public void setPeriods(String periods) {
		this.periods = periods;
	}

	@Column(name = "timings", length = 100)
	public String getTimings() {
		return this.timings;
	}

	public void setTimings(String timings) {
		this.timings = timings;
	}

	@Column(name = "days", length = 60)
	public String getDays() {
		return this.days;
	}

	public void setDays(String days) {
		this.days = days;
	}

	@Column(name = "periodmasterid")
	public Integer getPeriodmasterid() {
		return periodmasterid;
	}

	public void setPeriodmasterid(Integer periodmasterid) {
		this.periodmasterid = periodmasterid;
	}

	@Column(name = "subject")
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Column(name = "staff")
	public String getStaff() {
		return staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
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
