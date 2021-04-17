package com.controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class IndexController {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "insertUser")
    public String insertUser() {

        String sql = "insert  into  user(id,name,password)values('2','3','4')";
        int i = jdbcTemplate.update(sql);
        System.out.println(i);

        return "1";

    }

    @GetMapping("/hello")
    public String hello(Model model) {
        model.addAttribute("message", "这是Controller传过来的message");
        return "forward:/success.jsp";
    }
}
