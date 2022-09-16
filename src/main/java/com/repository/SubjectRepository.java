package com.repository;

import com.util.HibernateFactoryUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.Optional;

public class SubjectRepository {
    private static SubjectRepository instance;

    private static SessionFactory sessionFactory;


    private SubjectRepository() {
        sessionFactory = HibernateFactoryUtil.getSessionFactory();
    }

    public static SubjectRepository getInstance() {
        if(instance == null) {
            instance = new SubjectRepository();
        }
        return instance;
    }

    public static Optional<Object[]> findSubjectWithBestGrades() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("SELECT SB, AVG(G.value) as AG FROM Grade G " +
                "INNER JOIN G.subject SB GROUP BY SB ORDER BY AG DESC");
        Optional<Object[]> result = Optional.of((Object[])query.setMaxResults(1).getSingleResult());
        return result;
    }

    public static Optional<Object[]> findSubjectWithWorstGrades() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("SELECT SB, AVG(G.value) as AG FROM Grade G " +
                "INNER JOIN G.subject SB GROUP BY SB ORDER BY AG ASC");
        Optional<Object[]> result = Optional.of((Object[])query.setMaxResults(1).getSingleResult());
        return result;
    }
}
