package com.devpro.shopdoda.cotroller.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	@RequestMapping(value = { "/order/success" }, method = RequestMethod.GET)
	public String orderSuccess(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		return "front-end/order_success";
	}
}
