package com.starchain.service;

import com.starchain.po.MallAuctionState;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public interface MallAuctionStateService {
    public void addAucionState(MallAuctionState mallAuctionState);
    public void startAuction(Date duedate);
}
