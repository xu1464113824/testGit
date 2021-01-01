package com.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;

@WebListener
public class ServletContextListener implements javax.servlet.ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
        System.out.println("项目终止...");
    }

    public void contextInitialized(ServletContextEvent sce)  { 
         System.out.println("项目启动...");
    }
	
}
