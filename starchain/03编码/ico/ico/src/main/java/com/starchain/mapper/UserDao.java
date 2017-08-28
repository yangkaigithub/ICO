package com.starchain.mapper;

import com.starchain.po.User;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * Created by tpusers on 2017/1/5.
 */
@Repository
public interface UserDao {
    public void addUser(User user) throws Exception;
}
