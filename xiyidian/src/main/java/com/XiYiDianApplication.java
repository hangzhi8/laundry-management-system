package com;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;
import org.springframework.util.StringUtils;

@SpringBootApplication
@MapperScan(basePackages = {"com.dao"})
public class XiYiDianApplication extends SpringBootServletInitializer{

	private static final Logger log = LoggerFactory.getLogger(XiYiDianApplication.class);

	public static void main(String[] args) {
		ConfigurableApplicationContext applicationContext = SpringApplication.run(XiYiDianApplication.class, args);
		printAccessUrls(applicationContext);
	}
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
        return applicationBuilder.sources(XiYiDianApplication.class);
    }

	private static void printAccessUrls(ConfigurableApplicationContext application) {
		Environment env = application.getEnvironment();
		String serverPort = env.getProperty("server.port");
		String contextPath = env.getProperty("server.servlet.context-path");
		String accessUrl = "http://localhost:"+serverPort+contextPath;
		String adminUrl = "启动admin-vue这个后台vue项目就可以看的访问地址";
		String frontUrl = accessUrl + "/front/index.html";

		log.info("\n    ----------------------------------------------------------\n\t" +
				"Application  is running! Access URLs:\n\t" +
				"后台界面访问地址: \tadminUrl：" + adminUrl + "\n\t" +
				"前台界面访问地址: \tfrontUrl：" + frontUrl + "\n\t" +
				"----------------------------------------------------------");
	}
}
