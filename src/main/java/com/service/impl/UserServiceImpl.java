package com.service.impl;

import com.dao.UserDao;
import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public List<User> selectAll() {
        return userDao.selectAll();

    }

    @Override
    public List<User> loginUser(String username, String password) {
        return userDao.loginUser(username, password);
    }

    @Override
    public int useradd(User user) {
        return userDao.useradd(user);
    }

    @Override
    public int userdelete(int id) {
        return userDao.userdelete(id);
    }

    @Override
    public int userUpdate(User user) {
        return userDao.userUpdate(user);
    }

}
