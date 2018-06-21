package com.hospital;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;

@EnableAutoConfiguration
@SpringBootApplication
@RefreshScope
@EnableDiscoveryClient
@EnableHystrixDashboard
@EnableHystrix
public class TransferenceXzyyApplication {
    public static void main(String[] args) {
        SpringApplication.run(TransferenceXzyyApplication.class, args);
    }
}

