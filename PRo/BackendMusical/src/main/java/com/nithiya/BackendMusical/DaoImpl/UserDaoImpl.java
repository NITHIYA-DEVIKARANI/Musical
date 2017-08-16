package com.nithiya.BackendMusical.DaoImpl;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.nithiya.BackendMusical.Dao.UserDao;
import com.nithiya.BackendMusical.Model.UserModel;

@Repository("userDao")
public class UserDaoImpl implements UserDao{
	 @Autowired
	    SessionFactory sessionFactory;
	 public void addUser(UserModel obj)
	    {
	        Session s=sessionFactory.openSession();
	        s.beginTransaction();
	        s.save(obj);
	        s.getTransaction().commit();
	        s.close();
	        // TODO Auto-generated method stub
	        
	    }
}
