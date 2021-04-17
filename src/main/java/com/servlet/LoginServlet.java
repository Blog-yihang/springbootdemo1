package com.servlet;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author zz
 */
@Controller
public class LoginServlet {
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
//获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        List<User> list = userService.loginUser(username, password);

        for (User value : list) {
            if (username.equals(value.getUsername()) && password.equals(value.getPassword())) {
                System.out.println(username + password);

                request.setAttribute("info", "登录成功");
                request.setAttribute("user", username);

                List list1 = userService.selectAll();
                request.setAttribute("list", list1);

                return "forward:/showInfo.jsp";
            }
        }
        return "login";
    }
}

