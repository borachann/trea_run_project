package com.kosign.wecafe.entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="owed_customer")
public class OwedCustomer implements Serializable {
	private static long serialVersionUID = 1L;
	@Id
	@SequenceGenerator(allocationSize=1, initialValue=1, sequenceName="owed_id_seq", name="owed_id")
	@GeneratedValue(generator="owed_id", strategy=GenerationType.SEQUENCE)
	@Column(name="owed_id")
	private long owedId;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cus_id")
	private Customer cus_id;

	@Column(name="date_owed")
	private Date owedDate;
	
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public static void setSerialVersionUID(long serialVersionUID) {
		OwedCustomer.serialVersionUID = serialVersionUID;
	}

	public long getOwedId() {
		return owedId;
	}

	public void setOwedId(long owedId) {
		this.owedId = owedId;
	}
  

	public Customer getCus_id() {
		return cus_id;
	}

	public void setCus_id(Customer cus_id) {
		this.cus_id = cus_id;
	}

	public Date getOwedDate() {
		return owedDate;
	}

	public void setOwedDate(Date owedDate) {
		this.owedDate = owedDate;
	}

	public Date getDatePaid() {
		return datePaid;
	}

	public void setDatePaid(Date datePaid) {
		this.datePaid = datePaid;
	}

	public BigDecimal getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Column(name="date_paid")
	private Date datePaid;
	
	@Column(name="owed_amount")
	private BigDecimal totalAmount= new BigDecimal("0");
	
	@Column(name="status")
	private boolean status;
}
