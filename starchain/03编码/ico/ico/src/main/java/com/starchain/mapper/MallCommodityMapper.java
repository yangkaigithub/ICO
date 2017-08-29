package com.starchain.mapper;

import com.starchain.po.MallCommodity;
import org.springframework.stereotype.Repository;

@Repository
public interface MallCommodityMapper {

    int deleteByPrimaryKey(String commodityId);

    int insert(MallCommodity record);

    int insertSelective(MallCommodity record);

    MallCommodity selectByPrimaryKey(String commodityId);

    int updateByPrimaryKeySelective(MallCommodity record);

    int updateByPrimaryKey(MallCommodity record);
}