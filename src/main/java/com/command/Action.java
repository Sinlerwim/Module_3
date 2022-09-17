package com.command;

import lombok.Getter;

@Getter
public enum Action {

    MIGRATE("Insert rows in DB", new Migrate()),
    FIND_GROUP("Find group by name", new FindGroup()),
    PRINT_GROUP_NUMBER("Print number of students in each group", new PrintNumberOfStudentsInEachGroup()),
    PRINT_AVG_GRADE_OF_GROUPS("Print average grade of each group", new PrintAverageGradeOfEachGroup()),
    FIND_TEACHER("Find teacher by name", new FindTeacherByName()),
    PRINT_BEST_WORST_SUBJECT("Print the best and the worst subject by grades", new PrintBestWorstSubjectByGrades()),
    PRINT_STUDENTS_WITH_GRADES("Print students with average grades higher than bound",
            new PrintStudentsWithHigherThanBound()),
    EXIT("Exit", null);


    private final String name;
    private final Command command;

    Action(String name, Command command) {
        this.name = name;
        this.command = command;
    }

    public Command execute() {
        if (command != null) {
            command.execute();
        }
        return command;
    }
}
