package org.ideoholic.curium.model.account.dto;

// default package
// Generated 16 Feb, 2018 11:28:08 AM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Accountsubgroupmaster generated by hbm2java
 */
@Entity
@Table(name = "acc_accountsubgroupmaster")
public class Accountsubgroupmaster implements java.io.Serializable {

	private Integer accountsubgroupmasterid;
	private String accountsubgroupname;
	private Integer accountgroupid;
	private Accountgroupmaster accountGroupMaster;
	private int branchid;
	private int userid;
	
	public Accountsubgroupmaster() {
	}

	public Accountsubgroupmaster(String accountsubgroupname,
			Integer accountgroupid, Accountgroupmaster accountGroupMaster, int branchid, int userid) {
		this.accountsubgroupname = accountsubgroupname;
		this.accountgroupid = accountgroupid;
		this.accountGroupMaster = accountGroupMaster;
		this.branchid = branchid;
		this.userid = userid;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "accountsubgroupmasterid", unique = true, nullable = false)
	public Integer getAccountsubgroupmasterid() {
		return this.accountsubgroupmasterid;
	}

	public void setAccountsubgroupmasterid(Integer accountsubgroupmasterid) {
		this.accountsubgroupmasterid = accountsubgroupmasterid;
	}

	@Column(name = "accountsubgroupname", length = 100)
	public String getAccountsubgroupname() {
		return this.accountsubgroupname;
	}

	public void setAccountsubgroupname(String accountsubgroupname) {
		this.accountsubgroupname = accountsubgroupname;
	}

	@Column(name = "accountgroupmasterid")
	public Integer getAccountgroupid() {
		return this.accountgroupid;
	}

	public void setAccountgroupid(Integer accountgroupid) {
		this.accountgroupid = accountgroupid;
	}

	public Accountgroupmaster getAccountGroupMaster() {
		return accountGroupMaster;
	}

	public void setAccountGroupMaster(Accountgroupmaster accountGroupMaster) {
		this.accountGroupMaster = accountGroupMaster;
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
