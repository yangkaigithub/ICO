package com.starchain.po;

import java.math.BigDecimal;

public class MallAuctionState {
    private String auctionId;

    private String auctionUserId;

    private String auctionCommodityId;

    private BigDecimal auctionPrice;

    private String auctionDueDate;

    private String auctionDueTime;

    public String getAuctionId() {
        return auctionId;
    }

    public void setAuctionId(String auctionId) {
        this.auctionId = auctionId == null ? null : auctionId.trim();
    }

    public String getAuctionUserId() {
        return auctionUserId;
    }

    public void setAuctionUserId(String auctionUserId) {
        this.auctionUserId = auctionUserId == null ? null : auctionUserId.trim();
    }

    public String getAuctionCommodityId() {
        return auctionCommodityId;
    }

    public void setAuctionCommodityId(String auctionCommodityId) {
        this.auctionCommodityId = auctionCommodityId == null ? null : auctionCommodityId.trim();
    }

    public BigDecimal getAuctionPrice() {
        return auctionPrice;
    }

    public void setAuctionPrice(BigDecimal auctionPrice) {
        this.auctionPrice = auctionPrice;
    }

    public String getAuctionDueDate() {
        return auctionDueDate;
    }

    public void setAuctionDueDate(String auctionDueDate) {
        this.auctionDueDate = auctionDueDate == null ? null : auctionDueDate.trim();
    }

    public String getAuctionDueTime() {
        return auctionDueTime;
    }

    public void setAuctionDueTime(String auctionDueTime) {
        this.auctionDueTime = auctionDueTime == null ? null : auctionDueTime.trim();
    }
}