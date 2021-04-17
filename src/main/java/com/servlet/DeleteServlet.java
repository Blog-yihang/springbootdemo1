package com.servlet;

import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class DeleteServlet {
    @Autowired
    private UserService userService;

    @RequestMapping("/delete")
    public String delete(HttpServletRequest request) {

        String idStr = request.getParameter("id");

        int id = userService.userdelete(Integer.parseInt(idStr));
        System.out.println(id);
        request.setAttribute("id", idStr);
        if (id > 1) {
            return "forward:/index.jsp";
        }
        return "forward:/delete.jsp";
    }
}
