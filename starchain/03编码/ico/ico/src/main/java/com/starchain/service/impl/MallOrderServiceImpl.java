package com.starchain.service.impl;

import com.starchain.mapper.MallOrderMapper;
import com.starchain.po.MallOrder;
import com.starchain.service.MallOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class MallOrderServiceImpl implements MallOrderService {
   @Autowired
   private MallOrderMapper mallOrderMapper;

    @Override
    public void addOrder(MallOrder mallOrder) {
        mallOrder.setCostumerId("ffscfqedqdsdfa");
        mallOrder.setOrderCommodityId("fsfsdfdqwewed");
        mallOrder.setOrderId("15346315356");
        mallOrder.setOrderPrice(new BigDecimal("15.12345678"));
        mallOrder.setOrderCommodityCnt(2);
        mallOrder.setOrderCreateDate("20170821");
        mallOrder.setOrderCreateTime("211423123");
        mallOrder.setOrderStatus("001");
        mallOrderMapper.insert(mallOrder);
    }
}
