package com.sparrow.blog.boot;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.sparrow.blog.dao.EventDAO;
import com.sparrow.blog.dao.PostsDAO;
import com.sparrow.blog.dao.dos.EventEntityDO;
import com.sparrow.blog.dao.dos.PostsEntityDO;
import com.sparrow.container.Container;
import com.sparrow.container.ContainerBuilder;
import com.sparrow.core.spi.ApplicationContext;
import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.context.event.ApplicationStartingEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.event.ContextClosedEvent;
import org.springframework.context.event.ContextRefreshedEvent;

import java.util.List;

@MapperScan("com.sparrow.blog.dao")
@SpringBootApplication(scanBasePackages = "com.sparrow.*",exclude = DataSourceAutoConfiguration.class)
public class Application {
    private static Logger log = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {
        SpringApplication springApplication = new SpringApplication(Application.class);
        springApplication.addListeners(getApplicationStartingEventApplicationListener());
        springApplication.addListeners((ApplicationListener<ContextRefreshedEvent>) contextRefreshedEvent -> log.info("application startup at {}", contextRefreshedEvent.getTimestamp()));
        springApplication.addListeners((ApplicationListener<ContextClosedEvent>) contextClosedEvent -> log.info("application closed at at {}", contextClosedEvent.getTimestamp()));
        final ConfigurableApplicationContext run = springApplication.run(args);
    }

    private static ApplicationListener<ApplicationStartingEvent> getApplicationStartingEventApplicationListener() {
        return event -> {
            Container container = ApplicationContext.getContainer();
            ContainerBuilder builder = new ContainerBuilder()
                .scanBasePackage("com.sparrow")
                .initController(false)
                .initSingletonBean(false)
                .initInterceptor(false);
            container.init(builder);
        };
    }
}

