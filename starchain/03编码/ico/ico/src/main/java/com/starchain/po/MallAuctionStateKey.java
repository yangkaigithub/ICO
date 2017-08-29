package com.starchain.po;

public class MallAuctionStateKey {
    private String auctionCommodityId;

    private String auctionUserId;

    public String getAuctionCommodityId() {
        return auctionCommodityId;
    }

    public void setAuctionCommodityId(String auctionCommodityId) {
        this.auctionCommodityId = auctionCommodityId == null ? null : auctionCommodityId.trim();
    }

    public String getAuctionUserId() {
        return auctionUserId;
    }

    public void setAuctionUserId(String auctionUserId) {
        this.auctionUserId = auctionUserId == null ? null : auctionUserId.trim();
    }
}