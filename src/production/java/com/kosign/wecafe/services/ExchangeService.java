package com.kosign.wecafe.services;

import com.kosign.wecafe.entities.ExchangeRate;


public interface ExchangeService {
	public ExchangeRate getExchangerate();
	public Boolean setExchangerate(Integer rate);
}
