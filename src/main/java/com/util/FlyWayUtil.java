package com.util;

import org.flywaydb.core.Flyway;

public class FlyWayUtil {

    private static Flyway flyWay;

    public static void configure() {
        flyWay = Flyway.configure()
                .dataSource("jdbc:postgresql://localhost:5432/Module_3", "postgres", "admin")
                .baselineOnMigrate(true)
                .locations("db/migration")
                .load();
    }

    public static boolean migrate() {
        return flyWay.migrate().success;
    }
}
