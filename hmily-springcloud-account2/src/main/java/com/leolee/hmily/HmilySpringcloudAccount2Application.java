package com.leolee.hmily;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

@EnableDiscoveryClient
@SpringBootApplication
@EnableHystrix
@EnableFeignClients
@MapperScan({"org.dromara.hmily.demo.common.order.mapper", "com.leolee.hmily.dao"})
public class HmilySpringcloudAccount2Application {

    public static void main(String[] args) {
        SpringApplication.run(HmilySpringcloudAccount2Application.class, args);
    }

}
