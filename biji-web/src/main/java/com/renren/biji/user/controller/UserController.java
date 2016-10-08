package com.renren.biji.user.controller;

import com.renren.biji.core.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wangliang on 2016/10/8.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{

    @RequestMapping("/signin")
    public String signin(){
        return "";
    }
}
