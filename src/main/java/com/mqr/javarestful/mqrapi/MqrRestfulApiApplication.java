package com.mqr.javarestful.mqrapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication
public class MqrRestfulApiApplication {

    public static void main(String[] args) {

        SpringApplication.run(MqrRestfulApiApplication.class, args);
    }

}
