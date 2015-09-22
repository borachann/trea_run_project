package com.kosign.wecafe.entities;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="supplier")
public class Supplier {
	@Id
	@SequenceGenerator(allocationSize=1, initialValue=1, sequenceName="supplier_sup_id_seq", name="supplier_id")
	@GeneratedValue(generator="supplier_id", strategy=GenerationType.SEQUENCE)
	@Column(name="sup_id")
	private Long supId;
	
	@Column(name="sup_name")
	private String supplierName;
	
	@Column(name="sup_phone_number")
	private String supplierNumber;
	
	@Column(name="sup_address")
	private String supplierAddress;
	
	@Column(name="sup_email")
	private String supplierEmail;

	public Long getSupId() {
		return supId;
	}

	public void setSupId(Long supId) {
		this.supId = supId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierNumber() {
		return supplierNumber;
	}

	public void setSupplierNumber(String supplierNumber) {
		this.supplierNumber = supplierNumber;
	}

	public String getSupplierAddress() {
		return supplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}

	public String getSupplierEmail() {
		return supplierEmail;
	}

	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}
	
	
}