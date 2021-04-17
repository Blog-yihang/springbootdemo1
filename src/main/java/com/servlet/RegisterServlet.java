package com.servlet;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterServlet {
    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    public String register(HttpServletRequest request) {
//        获取参数

        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(id + username + password);
        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setUsername(username);
        user.setPassword(password);
        System.out.println(id + username + password);
        int i = userService.useradd(user);
        if (i > 0) {
            return "forward:/login";
        } else {
            return "register";
        }
    }
}
