package com.leolee.hmily.feign;

import org.springframework.stereotype.Component;

/**
 * @author Administrator
 * @version 1.0
 **/
@Component
public class Account2ClientFallback implements Account2Client {

    @Override
    public Boolean transfer(Double amount) {

        return false;
    }
}
