package org.ideoholic.curium.model.account.dto;

// default package
// Generated 7 Mar, 2018 10:58:19 AM by Hibernate Tools 4.0.0

import java.math.BigDecimal;
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
 * VoucherEntrytransactions generated by hbm2java
 */
@Entity           
@Table(name = "acc_voucherentrytransactions")
public class VoucherEntrytransactions implements java.io.Serializable {

	private Integer transactionsid;
	private Integer draccountid;
	private Integer craccountid;
	private BigDecimal dramount;
	private BigDecimal cramount;
	private Integer vouchertype;
	private Date transactiondate;
	private Date entrydate;
	private Date vouchercancellationdate;
	private String narration;
	private int financialyear;
	private String cancelvoucher;
	private int branchid;
	private int userid;
	
	public VoucherEntrytransactions() {
	}

	public VoucherEntrytransactions(Integer draccountid, Integer craccountid,
			BigDecimal dramount, BigDecimal cramount, Integer vouchertype,
			Date transactionDate, String narration, int financialyear, String cancelVoucher,Date entrydate,Date vouchercancellationdate,
			int branchid, int userid) {
		this.draccountid = draccountid;
		this.craccountid = craccountid;
		this.dramount = dramount;
		this.cramount = cramount;
		this.vouchertype = vouchertype;
		this.transactiondate = transactionDate;
		this.narration = narration;
		this.financialyear = financialyear;
		this.cancelvoucher = cancelVoucher;
		this.entrydate = entrydate;
		this.vouchercancellationdate = vouchercancellationdate;
		this.branchid = branchid;
		this.userid = userid;	
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "transactionsid", unique = true, nullable = false)
	public Integer getTransactionsid() {
		return this.transactionsid;
	}

	public void setTransactionsid(Integer transactionsid) {
		this.transactionsid = transactionsid;
	}

	@Column(name = "draccountid")
	public Integer getDraccountid() {
		return this.draccountid;
	}

	public void setDraccountid(Integer draccountid) {
		this.draccountid = draccountid;
	}

	@Column(name = "craccountid")
	public Integer getCraccountid() {
		return this.craccountid;
	}

	public void setCraccountid(Integer craccountid) {
		this.craccountid = craccountid;
	}

	@Column(name = "dramount", precision = 10, scale = 5)
	public BigDecimal getDramount() {
		return this.dramount;
	}

	public void setDramount(BigDecimal dramount) {
		this.dramount = dramount;
	}

	@Column(name = "cramount", precision = 10, scale = 5)
	public BigDecimal getCramount() {
		return this.cramount;
	}

	public void setCramount(BigDecimal cramount) {
		this.cramount = cramount;
	}

	@Column(name = "vouchertype")
	public Integer getVouchertype() {
		return this.vouchertype;
	}

	public void setVouchertype(Integer vouchertype) {
		this.vouchertype = vouchertype;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "transactiondate", length = 10)
	public Date getTransactiondate() {
		return transactiondate;
	}

	public void setTransactiondate(Date transactiondate) {
		this.transactiondate = transactiondate;
	}

	@Column(name = "narration", length = 500)
	public String getNarration() {
		return this.narration;
	}

	public void setNarration(String narration) {
		this.narration = narration;
	}

	public int getFinancialyear() {
		return financialyear;
	}

	public void setFinancialyear(int financialyear) {
		this.financialyear = financialyear;
	}

	public String getCancelvoucher() {
		return cancelvoucher;
	}

	public void setCancelvoucher(String cancelvoucher) {
		this.cancelvoucher = cancelvoucher;
	}

	public Date getEntrydate() {
		return entrydate;
	}

	public void setEntrydate(Date entrydate) {
		this.entrydate = entrydate;
	}

	public Date getVouchercancellationdate() {
		return vouchercancellationdate;
	}

	public void setVouchercancellationdate(Date vouchercancellationdate) {
		this.vouchercancellationdate = vouchercancellationdate;
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
