package com.starchain.po;

public class MallAuctionState {

    private String auctionUserId;
    private String auctionCommodityId;
    private String auctionDueDate;
    private String auctionDueTime;

    @Override
    public String toString() {
        return "MallAuctionState{" +
                "auctionUserId='" + auctionUserId + '\'' +
                ", auctionCommodityId='" + auctionCommodityId + '\'' +
                ", auctionDueDate='" + auctionDueDate + '\'' +
                ", auctionDueTime='" + auctionDueTime + '\'' +
                '}';
    }

    public String getAuctionUserId() {
        return auctionUserId;
    }

    public void setAuctionUserId(String auctionUserId) {
        this.auctionUserId = auctionUserId;
    }

    public String getAuctionCommodityId() {
        return auctionCommodityId;
    }

    public void setAuctionCommodityId(String auctionCommodityId) {
        this.auctionCommodityId = auctionCommodityId;
    }

    public String getAuctionDueDate() {
        return auctionDueDate;
    }

    public void setAuctionDueDate(String auctionDueDate) {
        this.auctionDueDate = auctionDueDate;
    }

    public String getAuctionDueTime() {
        return auctionDueTime;
    }

    public void setAuctionDueTime(String auctionDueTime) {
        this.auctionDueTime = auctionDueTime;
    }
}
