package com.dao;

import com.entity.User;

import java.util.List;

public interface UserDao {
    List<User> selectAll();

    List<User> loginUser(String username, String password);

    int useradd(User user);

    int userdelete(int id);

    int userUpdate(User user);


}
