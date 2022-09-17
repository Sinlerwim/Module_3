package com.repository;


import com.model.Student;
import com.util.HibernateFactoryUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StudentRepository {

    private static StudentRepository instance;

    private static SessionFactory sessionFactory;


    private StudentRepository() {
        sessionFactory = HibernateFactoryUtil.getSessionFactory();
    }

    public static StudentRepository getInstance() {
        if(instance == null) {
            instance = new StudentRepository();
        }
        return instance;
    }

    public static Optional<Map<Student, Double>> findStudentsWithGradesHigherThan(Double bound) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("SELECT S, AVG(G.value) FROM Grade G " +
                "INNER JOIN  G.student as S GROUP BY S HAVING AVG(G.value) >= :min");
        query.setParameter("min", bound);
        Stream<Object[]> resultStream = query.getResultStream();
        return Optional.of(resultStream.collect(Collectors.toMap(o -> (Student) o[0], o -> (Double) o[1])));
    }
}
