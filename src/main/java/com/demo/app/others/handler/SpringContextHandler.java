package com.demo.app.others.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;

public class SpringContextHandler {

    private Logger logger = LoggerFactory.getLogger(SpringContextHandler.class);

    private static ApplicationContext appContext = null;

    /**
     * 用静态方法获取Spring Context
     * @return ApplicationContext
     */
    public static ApplicationContext getSpringContext() {
        return appContext;
    }

    public static ApplicationContext getAppContext() {
        return appContext;
    }

    /**
     * 此方法需要魏外层调用
     * @param applicationContext
     * @throws BeansException
     */
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        setAppContext(applicationContext);
    }

    private void setAppContext(ApplicationContext appContext) {
        logger.info("success setAppContext Of ApplicationContextLocal");
        SpringContextHandler.appContext = appContext;
    }
}
