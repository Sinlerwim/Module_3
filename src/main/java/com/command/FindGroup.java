package com.command;

import com.service.StudentsGroupService;
import com.util.UserInputUtil;

public class FindGroup implements Command {

    private static final StudentsGroupService SERVICE = new StudentsGroupService();
    @Override
    public void execute() {
        String targetGroupName = UserInputUtil.getUserInput("Input group name:");
        SERVICE.printGroupFromDBByName(targetGroupName);
    }
}
