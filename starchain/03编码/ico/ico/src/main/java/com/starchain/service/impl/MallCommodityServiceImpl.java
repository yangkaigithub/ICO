package com.starchain.service.impl;

import com.starchain.mapper.MallCommodityDao;
import com.starchain.po.MallCommodity;
import com.starchain.service.MallCommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class MallCommodityServiceImpl implements MallCommodityService {

    @Autowired
    private MallCommodityDao mallCommodityDao;
    @Override
    public void addCommodity(MallCommodity mallCommodity) {
        mallCommodity.setCommodityId("sfsfsf233413121e231231");
        mallCommodity.setCommodityName("zhuguang");
        mallCommodity.setCommodityPrice(70.9F);
        mallCommodity.setCommodityStatus("d");
        mallCommodity.setCommodityCreateTime("212455444");
        mallCommodity.setCommodityCreateDate("20170818");
        mallCommodity.setSellerUserId("gdfsfwfs342453132343");

        mallCommodityDao.addCommodity(mallCommodity);
    }
}
