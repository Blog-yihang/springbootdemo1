package com.servlet;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UpdateServlet {
    @Autowired
    private UserService userService;

    @RequestMapping("/update")
    public String update(HttpServletRequest request) {

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

        int count = userService.userUpdate(user);

        List list = userService.selectAll();
        request.setAttribute("list", list);

        System.out.println(count);
        if (count > 0) {
            return "forward:/showInfo.jsp";
        }
        return "forward:/update.jsp";
    }

}
