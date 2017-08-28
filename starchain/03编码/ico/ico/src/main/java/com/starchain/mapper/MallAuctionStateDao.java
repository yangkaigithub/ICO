package com.starchain.mapper;

import com.starchain.po.MallAuctionState;
import org.springframework.stereotype.Repository;

@Repository
public interface MallAuctionStateDao {
    public void addAuctionState(MallAuctionState mallAuctionState);
}
