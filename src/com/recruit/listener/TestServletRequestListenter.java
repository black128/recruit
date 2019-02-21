package com.recruit.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;


public class TestServletRequestListenter implements ServletRequestListener {

    @Override
    public void requestDestroyed(ServletRequestEvent arg0)  {
         System.out.println("request对像被销毁");
    }

	
    @Override
    public void requestInitialized(ServletRequestEvent arg0)  {
    	System.out.println("request对像被创建");
    }
	
}
