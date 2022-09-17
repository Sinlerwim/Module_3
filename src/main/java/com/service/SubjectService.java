package com.service;

import com.repository.SubjectRepository;

public class SubjectService {
    public static final SubjectRepository REPOSITORY = SubjectRepository.getInstance();

    public void printSubjectWithBestGrades() {
        REPOSITORY.findSubjectWithBestGrades().ifPresentOrElse(
                object -> {
                    System.out.println(object[0] + "\t" + object[1]);
                },
                () -> System.out.println("Not found")
        );
    }

    public void printSubjectWithWorstGrades() {
        REPOSITORY.findSubjectWithWorstGrades().ifPresentOrElse(
                object -> {
                    System.out.println(object[0] + "\t" + object[1]);
                },
                () -> System.out.println("Not found")
        );
    }
}
