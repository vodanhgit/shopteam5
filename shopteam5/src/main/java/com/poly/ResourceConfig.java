package com.poly;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

@Configuration
public class ResourceConfig {
	@Bean("messageSource")
	public MessageSource getMessageSource() {
		ReloadableResourceBundleMessageSource ms = new ReloadableResourceBundleMessageSource();
<<<<<<< HEAD
		ms.setBasenames("classpath:message/taikhoan.properties");
=======
		ms.setBasenames("classpath:messages/sanpham");
>>>>>>> ede89da19dd98c393d861dfcf283fadbd6f5db79
		ms.setDefaultEncoding("utf-8");
		return ms;
	}
}
