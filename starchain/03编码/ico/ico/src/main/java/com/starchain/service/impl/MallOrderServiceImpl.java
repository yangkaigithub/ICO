package com.starchain.service.impl;

import com.starchain.mapper.MallOrderDao;
import com.starchain.po.MallOrder;
import com.starchain.service.MallOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MallOrderServiceImpl implements MallOrderService {
   @Autowired
   private MallOrderDao mallOrderDao;

    @Override
    public void addOrder(MallOrder mallOrder) {
        mallOrder.setCostumerId("ffscfqedqdsdfa");
        mallOrder.setOrderCommodityId("fsfsdfdqwewed");
        mallOrder.setOrderId("15346315356");
        mallOrder.setOrderPrice(10.2F);
        mallOrder.setOrderCommodityCnt(2);
        mallOrder.setOrderCreateDate("20170821");
        mallOrder.setOrderCreateTime("211423123");
        mallOrder.setOrderStatus("a");
        mallOrderDao.addOrder(mallOrder);
    }
}
