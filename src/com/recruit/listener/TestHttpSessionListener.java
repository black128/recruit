package com.recruit.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class TestHttpSessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent arg0)  { 
    	System.out.println("session被创建");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
    	System.out.println("session被销毁");
    }
	
}
