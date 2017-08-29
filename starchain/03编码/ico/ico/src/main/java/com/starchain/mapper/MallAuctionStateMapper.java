package com.starchain.mapper;


import com.starchain.po.MallAuctionState;
import com.starchain.po.MallAuctionStateKey;
import org.springframework.stereotype.Repository;

@Repository
public interface MallAuctionStateMapper {

    int deleteByPrimaryKey(MallAuctionStateKey key);

    int insert(MallAuctionState record);

    int insertSelective(MallAuctionState record);

    MallAuctionState selectByPrimaryKey(MallAuctionStateKey key);

    int updateByPrimaryKeySelective(MallAuctionState record);

    int updateByPrimaryKey(MallAuctionState record);
}