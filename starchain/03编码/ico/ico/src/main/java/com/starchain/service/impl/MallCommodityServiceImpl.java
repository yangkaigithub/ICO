package com.starchain.service.impl;

import com.starchain.mapper.MallCommodityMapper;
import com.starchain.po.MallCommodity;
import com.starchain.service.MallCommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class MallCommodityServiceImpl implements MallCommodityService {

    @Autowired
    private MallCommodityMapper mallCommodityMapper;
    @Override
    public void addCommodity(MallCommodity mallCommodity) {
        mallCommodity.setCommodityId("sfsfsf233413121e231231");
        mallCommodity.setCommodityName("zhuguang");
        mallCommodity.setCommodityPrice(new BigDecimal("10.1234654"));
        mallCommodity.setCommodityBlock("ComBlock001");
        mallCommodity.setCommodityType("ComType001");
        mallCommodity.setCommodityCreateTime("212455444");
        mallCommodity.setCommodityCreateDate("20170818");
        mallCommodity.setSellerUserId("gdfsfwfs342453132343");

        mallCommodityMapper.insert(mallCommodity);
    }
}
