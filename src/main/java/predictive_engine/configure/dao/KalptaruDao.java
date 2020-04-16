package predictive_engine.configure.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import predictive_engine.entity.kalptaru;

@Service
public class KalptaruDao {
	
	public void getcolumn() {
		SessionFactory sessionFactory=
							new Configuration().configure("hibernate.cfg.xml")
							.addAnnotatedClass(kalptaru.class).buildSessionFactory();
		Session session=sessionFactory.getCurrentSession();
		try {
			session.beginTransaction();
			List<kalptaru> lists=session.createQuery("from kalptaru").getResultList();
			for (kalptaru k:lists) {
				System.out.println(k.getColumn1());
			}
		}catch (Exception e) {
			System.out.println(e);
		}
	}

}
