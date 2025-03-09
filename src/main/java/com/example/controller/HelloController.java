package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author fengxiangsen@phone580.com
 * @since 2025/3/9
 */
@RestController
@RequestMapping(path = "/hello")
public class HelloController {

    @RequestMapping(value = "/say", method = RequestMethod.GET)
    public String hello(){
        return "你好";
    }
}
