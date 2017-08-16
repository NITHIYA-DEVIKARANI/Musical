package com.nithiya.BackendMusical.Config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.nithiya.BackendMusical.Model.CategoryModel;
import com.nithiya.BackendMusical.Model.ProductsModel;
import com.nithiya.BackendMusical.Model.SupplierModel;
import com.nithiya.BackendMusical.Model.UserModel;

@Configuration
@ComponentScan("com.nithiya.BackendMusical")
@EnableTransactionManagement
public class Application_Context {
	@Autowired
    @Bean(name = "dataSource")
	 public DataSource getH2DataSource() {

        DriverManagerDataSource dataSource = new DriverManagerDataSource();
            
        dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");

        dataSource.setDriverClassName("org.h2.Driver");

        dataSource.setUsername("nithiya");
        dataSource.setPassword("");  
        
        return dataSource;
    }
	 private Properties getHibernateProperties() {
	        Properties properties = new Properties();
	        properties.put("hibernate.show_sql", "true");
	        properties.put("hibernate.hbm2ddl.auto", "update");
	        properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	        properties.put("hibernate.format_sql", "true");
	        return properties;
	    }
	  @Autowired
	    @Bean(name = "sessionFactory")
	    public SessionFactory getSessionFactory(DataSource dataSource) {

	        LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	        sessionBuilder.addProperties(getHibernateProperties());
	        sessionBuilder.addAnnotatedClass(UserModel.class);
	        sessionBuilder.addAnnotatedClass(ProductsModel.class);
	        sessionBuilder.addAnnotatedClass(CategoryModel.class);
	        sessionBuilder.addAnnotatedClass(SupplierModel.class);
	        //sessionBuilder.scanPackages("com.nithiya.model");
	        return sessionBuilder.buildSessionFactory();
	    }

	    @Autowired
	    @Bean(name = "transactionManager")
	    public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
	        HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

	        return transactionManager;
	    }
	}
	   