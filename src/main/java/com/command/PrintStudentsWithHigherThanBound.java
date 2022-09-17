package com.command;

import com.service.StudentService;
import com.util.UserInputUtil;

public class PrintStudentsWithHigherThanBound implements Command {
    public static final StudentService SERVICE = new StudentService();

    @Override
    public void execute() {
        Double gradesBound = Double.valueOf(UserInputUtil.getUserInput("Print the lowest bound of average grades:"));
        SERVICE.printStudentsWithGradesHigherThan(gradesBound);
    }
}
