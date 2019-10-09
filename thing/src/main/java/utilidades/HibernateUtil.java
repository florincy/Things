package utilidades;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class HibernateUtil {

    private static final SessionFactory concreteSessionFactory;

    static {
        try {
            concreteSessionFactory = new AnnotationConfiguration()
                    .configure()
                    .addAnnotatedClass(Usuario.class)
                    .addAnnotatedClass(Foto.class)
                    .buildSessionFactory();
        } catch (HibernateException ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession()
            throws HibernateException {
        return concreteSessionFactory.openSession();
    }

    public static void main(String... args) {
      //  Session session = getSession();
       // Transaction tr = session.beginTransaction();
      //  Usuario user = (Usuario) session.get(Usuario.class, 1);
       // if (user == null) {
//        } else {
      //      System.out.println("Nome: "+user.getNome());
      //  }
        
       // tr.commit();
       // session.close();
    }
}
