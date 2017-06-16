package com.atul.BackEnd;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages={"com.atul.BackEnd.dto"})
@EnableTransactionManagement
public class HibernateConfig {
	//change this variables for different  DBMS
	private static final String DATABASE_URL ="jdbc:h2:tcp://localhost/~/MyDB";
	private static final String DATABASE_DRIVER ="org.h2.Driver";
	private static final String DATABASE_DIALECT ="org.hibernate.dialect.H2Dialect";
	private static final String DATABASE_USERNAME ="sa";
	private static final String DATABASE_PASSWORD ="sa";

	//Bydefault bean is dataSource
	@Bean
	public DataSource getDatasource(){
		BasicDataSource dataSource =new BasicDataSource();
		//providing database information
		dataSource.setUsername(DATABASE_USERNAME);
		dataSource.setPassword(DATABASE_PASSWORD);
		dataSource.setDriverClassName(DATABASE_DRIVER);
		dataSource.setUrl(DATABASE_URL);
		
		return dataSource;
		}
	//Bean is sessionFactory
		@Bean
		public SessionFactory getsessionFactory(DataSource dataSource){
			LocalSessionFactoryBuilder builder =new LocalSessionFactoryBuilder(dataSource);
			builder.addProperties(getHibernatePropeis());
			builder.scanPackages("com.atul.BackEnd.dto");
			
			return builder.buildSessionFactory();
			
		}
		// Returning hibernate properties
	private Properties getHibernatePropeis() {

		Properties properties =new Properties();
		properties.put("hibernate.dialect",DATABASE_DIALECT);
		properties.put("hibernate.show_sql","true");
		properties.put("hibernate.format_sql","true");
		properties.put("hibernate.hbm2ddl.auto","update");
		return properties;
	}
	// transactionManager bean
	 @Bean
	 public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory){
		 HibernateTransactionManager transactionManager =new HibernateTransactionManager(sessionFactory);
		 return transactionManager;
		  }
	
}
