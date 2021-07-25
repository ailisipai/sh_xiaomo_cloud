package com.xiaomo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 程序登录入口
 */
@Controller
public class IndexController {

    /**
     * 进入登录页面
     * @return
     */
    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String index(){

        return "index";
    }
}
