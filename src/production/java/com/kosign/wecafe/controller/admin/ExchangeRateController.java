package com.kosign.wecafe.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosign.wecafe.services.ExchangeService;


@Controller

public class ExchangeRateController {
	@Autowired
	private ExchangeService exchangeService;
	
	@RequestMapping(value="/admin/ExchangeRate", method=RequestMethod.GET) 
	public int getRate(){			
		return exchangeService.getExchangerate();
	}

}
