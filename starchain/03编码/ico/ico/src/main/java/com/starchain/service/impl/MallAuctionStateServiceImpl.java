package com.starchain.service.impl;

import com.starchain.mapper.MallAuctionStateDao;
import com.starchain.po.MallAuctionState;
import com.starchain.service.MallAuctionStateService;
import org.springframework.beans.factory.annotation.Autowired;

public class MallAuctionStateServiceImpl implements MallAuctionStateService {

    @Autowired
    private MallAuctionStateDao mallAuctionStateDao;

    @Override
    public void addAucionState(MallAuctionState mallAuctionState) {
        mallAuctionState.setAuctionCommodityId("sdfsdfdscsda");
        mallAuctionState.setAuctionUserId("sffdadaddsas122");
        mallAuctionState.setAuctionDueDate("20170822");
        mallAuctionState.setAuctionDueTime("215423123");
        mallAuctionStateDao.addAuctionState(mallAuctionState);
    }
}
