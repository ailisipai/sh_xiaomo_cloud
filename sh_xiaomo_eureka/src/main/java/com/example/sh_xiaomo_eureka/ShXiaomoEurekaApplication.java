package com.example.sh_xiaomo_eureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class ShXiaomoEurekaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShXiaomoEurekaApplication.class, args);
    }

}
