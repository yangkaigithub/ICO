package com.starchain.service.impl;

import com.starchain.mapper.MallAuctionStateMapper;
import com.starchain.po.MallAuctionState;
import com.starchain.service.MallAuctionStateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
@Service
public class MallAuctionStateServiceImpl implements MallAuctionStateService {

    @Autowired
    private MallAuctionStateMapper mallAuctionStateMapper;
    @Override
    public void addAucionState(MallAuctionState mallAuctionState) {
        mallAuctionState.setAuctionCommodityId("sdfsdfdscsda");
        mallAuctionState.setAuctionUserId("sffdadaddsas122");
        mallAuctionState.setAuctionDueDate("20170822");
        mallAuctionState.setAuctionDueTime("215423123");
        mallAuctionState.setAuctionPrice(new BigDecimal(5.564645645));
        mallAuctionStateMapper.insert(mallAuctionState);
    }
}
