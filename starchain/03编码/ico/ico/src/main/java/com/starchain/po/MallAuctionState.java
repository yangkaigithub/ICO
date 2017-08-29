package com.starchain.po;

import java.math.BigDecimal;

public class MallAuctionState extends MallAuctionStateKey {
    private BigDecimal auctionPrice;

    private String auctionDueDate;

    private String auctionDueTime;

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