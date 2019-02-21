package com.recruit.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class TsetServletContextListener implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent arg0)  {
    	System.out.println("context对象被销毁");
    }


    @Override
    public void contextInitialized(ServletContextEvent arg0)  {
    	System.out.println("context对象被创建");
    }
	
}
