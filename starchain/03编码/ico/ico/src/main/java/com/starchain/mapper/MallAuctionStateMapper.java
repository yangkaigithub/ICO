package com.starchain.mapper;


import com.starchain.po.MallAuctionState;

public interface MallAuctionStateMapper {

    int deleteByPrimaryKey(String auctionId);

    int insert(MallAuctionState record);

    int insertSelective(MallAuctionState record);

    MallAuctionState selectByPrimaryKey(String auctionId);

    int updateByPrimaryKeySelective(MallAuctionState record);

    int updateByPrimaryKey(MallAuctionState record);
}