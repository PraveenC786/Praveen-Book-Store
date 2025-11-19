package com.jsp.bookStore;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc // used to enable Spring MVC configuration in java based spring project
@ComponentScan(basePackages = "com.jsp.bookStore")
//public class Configure {
public class Configure implements WebMvcConfigurer{

//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/resourses/**")
//		.addResourceLocations("/resourses/");
//	}
	
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
            .addResourceHandler("/resources/**")     // URL pattern
            .addResourceLocations("/resources/");    // actual folder under src/main/webapp
    }

	@Bean
	public InternalResourceViewResolver getViewResolver() {
		
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
//return "index";
//--> index -> /WEB-INF/views/index.jsp
	}
	
	@Bean
	public EntityManager getEntityManager() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("dev");
		return factory.createEntityManager();
		
	}
	
	@Bean
	public EntityTransaction getEntityTransaction(EntityManager manager) {
		return manager.getTransaction();
	}
}


