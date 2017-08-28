package com.starchain.service;

import com.starchain.po.MallAuctionState;
import org.springframework.stereotype.Service;

@Service
public interface MallAuctionStateService {
    public void addAucionState(MallAuctionState mallAuctionState);
}
