package com.starchain.mapper;


import com.starchain.po.MallAuctionState;
import com.starchain.po.MallAuctionStateKey;
import org.springframework.stereotype.Repository;

@Repository
public interface MallAuctionStateMapper {

    int deleteByPrimaryKey(MallAuctionStateKey key) throws Exception;

    int insert(MallAuctionState record) throws Exception;

    int insertSelective(MallAuctionState record) throws Exception;

    MallAuctionState selectByPrimaryKey(MallAuctionStateKey key) throws Exception;

    int updateByPrimaryKeySelective(MallAuctionState record) throws Exception;

    int updateByPrimaryKey(MallAuctionState record) throws Exception;
}