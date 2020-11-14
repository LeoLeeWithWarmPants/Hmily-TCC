package com.leolee.hmily.config;

import org.dromara.hmily.spring.HmilyApplicationContextAware;
import org.dromara.hmily.spring.aop.SpringHmilyTransactionAspect;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @ClassName GlobalConfiguration
 * @Description: TODO
 * @Author LeoLee
 * @Date 2020/11/14
 * @Version V1.0
 **/
@Configuration
public class GlobalConfiguration {

    @Bean
    public HmilyApplicationContextAware hmilyApplicationContextAware() {
        return new HmilyApplicationContextAware();
    }

    @Bean
    public SpringHmilyTransactionAspect springHmilyTransactionAspect() {
        return new SpringHmilyTransactionAspect();
    }
}
