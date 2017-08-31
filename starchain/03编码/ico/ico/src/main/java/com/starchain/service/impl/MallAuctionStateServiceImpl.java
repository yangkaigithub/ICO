package com.starchain.service.impl;

import com.starchain.mapper.MallAuctionStateMapper;
import com.starchain.mapper.MallOrderMapper;
import com.starchain.po.MallAuctionState;
import com.starchain.po.MallOrder;
import com.starchain.service.MallAuctionStateService;
import com.starchain.util.Mallutil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class MallAuctionStateServiceImpl implements MallAuctionStateService {

    @Autowired
    private MallAuctionStateMapper mallAuctionStateMapper;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private MallOrderMapper mallOrderMapper;

    @Override
    public void addAucionState(MallAuctionState mallAuctionState) {
        mallAuctionState.setAuctionCommodityId("sdfsdfdscsda");
        mallAuctionState.setAuctionUserId("sffdadaddsas122");
        mallAuctionState.setAuctionDueDate("20170822");
        mallAuctionState.setAuctionDueTime("215423123");
        mallAuctionState.setAuctionPrice(new BigDecimal(5.564645645));
        try {
            mallAuctionStateMapper.insert(mallAuctionState);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void startAuction(Date duedate) {
        MallAuctionState mallAuctionState = new MallAuctionState();

        //写死的竞拍属性
        mallAuctionState.setAuctionPrice(new BigDecimal(100));
        mallAuctionState.setAuctionId(Mallutil.getRandomString(10));
        mallAuctionState.setAuctionUserId(Mallutil.getRandomString(10));
        mallAuctionState.setAuctionCommodityId(Mallutil.getRandomString(10));
        mallAuctionState.setAuctionDueTime(new SimpleDateFormat("HHmmssSSS").format(duedate));
        mallAuctionState.setAuctionDueDate(new SimpleDateFormat("yyyyMMdd").format(duedate));


        try {
            mallAuctionStateMapper.insertSelective(mallAuctionState);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Long nowDateTime = new Date().getTime();
        final Long duration = duedate.getTime() - nowDateTime;
        threadPoolTaskExecutor.execute(new Runnable() {
            @Override
            public void run() {
                
                System.out.println("竞拍开始");
                try {
                    Thread.sleep(duration);

                    //创建订单，订单属性暂时写死
                    MallAuctionState mallAuctionStateDue = mallAuctionStateMapper.selectByPrimaryKey(mallAuctionState.getAuctionId());
                    MallOrder mallOrder = new MallOrder();
                    mallOrder.setCostumerId(mallAuctionStateDue.getAuctionUserId());
                    mallOrder.setOrderCommodityCnt(1);
                    mallOrder.setOrderCommodityId(mallAuctionStateDue.getAuctionCommodityId());
                    mallOrder.setOrderPrice(mallAuctionStateDue.getAuctionPrice());
                    mallOrder.setOrderCreateDate(Mallutil.getNowDate());
                    mallOrder.setOrderCreateTime(Mallutil.getNowTime());
                    mallOrder.setOrderStatus("001");
                    mallOrderMapper.insertSelective(mallOrder);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });

    }
}
