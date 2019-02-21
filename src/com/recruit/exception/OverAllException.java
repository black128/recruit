package com.recruit.exception;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.recruit.exception.MyException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;


public class OverAllException implements HandlerExceptionResolver{

	@Override
	public ModelAndView resolveException(HttpServletRequest request, 
			HttpServletResponse response, Object handler,
			Exception e) {
		
		ModelAndView mav = new ModelAndView();
		
		String msg = "这个网页生病了,正在治疗";
		
		if(e instanceof MyException) {
			msg = ((MyException) e).getMsg();
		}
		
		mav.addObject("msg",msg);
		
		mav.setViewName("admin/msg");
		
		return mav;
	}
	
}
