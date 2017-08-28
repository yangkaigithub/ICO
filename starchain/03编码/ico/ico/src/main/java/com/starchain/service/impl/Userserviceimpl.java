package com.starchain.service.impl;

import com.starchain.mapper.UserDao;
import com.starchain.po.User;
import com.starchain.service.Userservice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by tpusers on 2017/1/5.
 */
@Service
public class Userserviceimpl implements Userservice {

    @Resource
    private UserDao userDao;

    //添加用户实现
    @Override
    public void addUser(User user) throws Exception {
        userDao.addUser(user);
    }


}
