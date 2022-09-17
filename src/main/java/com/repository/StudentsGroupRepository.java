package com.repository;

import com.model.Grade;
import com.model.StudentsGroup;
import com.util.HibernateFactoryUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.Query;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StudentsGroupRepository {
    private static StudentsGroupRepository instance;

    private static SessionFactory sessionFactory;


    private StudentsGroupRepository() {
        sessionFactory = HibernateFactoryUtil.getSessionFactory();
    }

    public static StudentsGroupRepository getInstance() {
        if (instance == null) {
            instance = new StudentsGroupRepository();
        }
        return instance;
    }

    public static List<StudentsGroup> getAll() {
        Session session = sessionFactory.openSession();
        return session.createQuery("FROM StudentsGroup ", StudentsGroup.class).list();
    }

    public static Optional<List<StudentsGroup>> findByName(String groupName) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("SELECT S FROM StudentsGroup S" +
                " WHERE S.name like ?1 ");
        query.setParameter(1, "%" + groupName + "%");
        return Optional.of(query.getResultList());
    }

    public static Optional<Map<String, Long>> getNumberOfStudentsInEachGroup() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("SELECT COUNT(S.id), S.studentsGroup.name FROM Student S INNER" +
                " JOIN S.studentsGroup GROUP BY S.studentsGroup.name");
        Stream<Object[]> result = query.getResultStream();
        return Optional.of(result.collect(Collectors.toMap(o -> o[1].toString(), o -> (Long) o[0])));
    }

    public static Optional<Map<String, Double>> getAverageGradeOfEachGroup() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("SELECT AVG(G.value), SG.name FROM Grade as G " +
                "INNER JOIN G.student as S INNER JOIN S.studentsGroup as SG GROUP BY SG.name");
//        Query query = session.createQuery("SELECT AVG(G.value), G.student.id FROM Grade as G group by G.student.id");
        List<Object[]> result = query.getResultList();
//        System.out.println(query.getResultList());
        return Optional.of(result.stream().collect(Collectors.toMap(o -> o[1].toString(), o -> (Double) o[0])));
//        result.forEach(objects -> {
//            System.out.println(objects[0] + " " + objects[1]);
//        });
    }
}
