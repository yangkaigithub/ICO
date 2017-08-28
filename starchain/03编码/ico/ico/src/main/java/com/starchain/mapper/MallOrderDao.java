package com.starchain.mapper;

import com.starchain.po.MallOrder;
import org.springframework.stereotype.Repository;

@Repository
public interface MallOrderDao {
    public void addOrder(MallOrder mallOrder);
}
