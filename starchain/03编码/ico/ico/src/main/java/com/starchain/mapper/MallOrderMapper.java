package com.starchain.mapper;


import com.starchain.po.MallOrder;
import org.springframework.stereotype.Repository;

@Repository
public interface MallOrderMapper {

    int deleteByPrimaryKey(String orderId);

    int insert(MallOrder record);

    int insertSelective(MallOrder record);

    MallOrder selectByPrimaryKey(String orderId);

    int updateByPrimaryKeySelective(MallOrder record);

    int updateByPrimaryKey(MallOrder record);
}