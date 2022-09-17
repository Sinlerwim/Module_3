package com.service;

import com.repository.TeacherRepository;

public class TeacherService {
    public static final TeacherRepository REPOSITORY = TeacherRepository.getInstance();

    public void printTeacherFromDBByName(String firstName, String lastName) {
        REPOSITORY.findByName(firstName, lastName).ifPresentOrElse(
                System.out::println,
                () -> System.out.println("Not found")
        );
    }
}
