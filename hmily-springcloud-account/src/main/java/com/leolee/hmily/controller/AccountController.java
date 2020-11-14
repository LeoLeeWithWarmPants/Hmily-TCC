package com.leolee.hmily.controller;

import com.leolee.hmily.dao.AccountMapper;
import com.leolee.hmily.entity.AccountInfo;
import com.leolee.hmily.service.AccountInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName AccountController
 * @Description: TODO
 * @Author LeoLee
 * @Date 2020/11/14
 * @Version V1.0
 **/
@RestController
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountMapper accountMapper;

    @Autowired
    AccountInfoService accountInfoService;


    @GetMapping("/test")
    public List<AccountInfo> test() {

        return accountMapper.selectAll();
    }



    @RequestMapping("/transfer")
    public Boolean transfer(@RequestParam("amount") Double amount) {
        this.accountInfoService.updateAccountBalance("1", amount);
        return true;
    }
}
