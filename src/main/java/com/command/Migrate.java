package com.command;

import com.util.FlyWayUtil;

public class Migrate implements Command {
    @Override
    public void execute() {
        FlyWayUtil.configure();
        FlyWayUtil.migrate();
    }
}
