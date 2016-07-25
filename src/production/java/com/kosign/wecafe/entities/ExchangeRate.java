package com.kosign.wecafe.entities;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="exchangerate")
public class ExchangeRate implements Serializable{
	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(name="EXCHANGE_RATE")
	private Integer exchangerate;

	@Column(name="COST_MONEY")
	private Integer costmoney;
	
	public Integer getCostmoney() {
		return costmoney;
	}

	public void setCostmoney(Integer costmoney) {
		this.costmoney = costmoney;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getExchangerate() {
		return exchangerate;
	}

	public void setExchangerate(Integer exchangerate) {
		this.exchangerate = exchangerate;
	}
}
