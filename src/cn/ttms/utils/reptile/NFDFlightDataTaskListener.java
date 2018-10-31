package cn.ttms.utils.reptile;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class NFDFlightDataTaskListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        new TimerManager();
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
