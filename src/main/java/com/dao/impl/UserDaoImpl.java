package com.dao.impl;

import com.dao.UserDao;
import com.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<User> selectAll() {
        return jdbcTemplate.query("select * from user", new BeanPropertyRowMapper<User>(User.class));
    }

    @Override
    public List<User> loginUser(String username, String password) {

        return jdbcTemplate.query("select * from user", new RowMapper<User>() {
            @Override
            public User mapRow(ResultSet resultSet, int i) throws SQLException {

                int id = resultSet.getInt("id");
                String name = resultSet.getString("username");
                String password = resultSet.getString("password");
                //得到的数据封装到对象里面
                User user = new User();
                user.setId(id);
                user.setUsername(name);
                user.setPassword(password);

                return user;
            }
        });
    }

    @Override
    public int useradd(User user) {
        return jdbcTemplate.update("insert  into user(id,username,password) values (?,?,?)", user.getId(), user.getUsername(), user.getPassword());
    }

    @Override
    public int userdelete(int id) {
        return jdbcTemplate.update("delete from user where id=?", id);
    }

    @Override
    public int userUpdate(User user) {

        return jdbcTemplate.update("update user set username=?,password=? where id=?", user.getUsername(), user.getPassword(), user.getId());
    }


}

