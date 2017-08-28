package com.starchain.mapper;

import com.starchain.po.MallCommodity;
import org.springframework.stereotype.Repository;

@Repository
public interface MallCommodityDao {
    public void addCommodity(MallCommodity mallCommodity);
}
