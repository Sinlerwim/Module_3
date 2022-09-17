package com.repository;

import com.model.StudentsGroup;
import com.model.Teacher;
import com.util.HibernateFactoryUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.Query;
import java.util.List;
import java.util.Optional;

public class TeacherRepository {
    private static TeacherRepository instance;

    private static SessionFactory sessionFactory;


    private TeacherRepository() {
        sessionFactory = HibernateFactoryUtil.getSessionFactory();
    }

    public static TeacherRepository getInstance() {
        if(instance == null) {
            instance = new TeacherRepository();
        }
        return instance;
    }

    public static Optional<List<StudentsGroup>> findByName(String firstName, String lastName) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("SELECT T FROM Teacher T " +
                "WHERE T.firstName like CONCAT('%',?1,'%') " +
                "AND T.lastName like CONCAT('%',?2,'%')");
        query.setParameter(1, firstName);
        query.setParameter(2, lastName);
        return Optional.of(query.getResultList());
    }
}
