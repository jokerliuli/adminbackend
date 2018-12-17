package com.info33.adminbackend;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.info33.adminbackend.*.mapper")
public class AdminbackendApplication {
    public static void main(String[] args) {
        SpringApplication.run(AdminbackendApplication.class, args);
    }
}
