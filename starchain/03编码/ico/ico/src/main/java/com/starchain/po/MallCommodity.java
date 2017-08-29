package com.starchain.po;

import java.math.BigDecimal;

public class MallCommodity {
    private String commodityId;

    private String commodityName;

    private String sellerUserId;

    private BigDecimal commodityPrice;

    private String commodityBlock;

    private String commodityType;

    private String commodityInfo;

    private String commodityCreateTime;

    private String commodityCreateDate;

    private String commodityUpdateTime;

    private String commodityUpdateDate;

    private String commodityDueTime;

    private String commodityDueDate;

    public String getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(String commodityId) {
        this.commodityId = commodityId == null ? null : commodityId.trim();
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName == null ? null : commodityName.trim();
    }

    public String getSellerUserId() {
        return sellerUserId;
    }

    public void setSellerUserId(String sellerUserId) {
        this.sellerUserId = sellerUserId == null ? null : sellerUserId.trim();
    }

    public BigDecimal getCommodityPrice() {
        return commodityPrice;
    }

    public void setCommodityPrice(BigDecimal commodityPrice) {
        this.commodityPrice = commodityPrice;
    }

    public String getCommodityBlock() {
        return commodityBlock;
    }

    public void setCommodityBlock(String commodityBlock) {
        this.commodityBlock = commodityBlock == null ? null : commodityBlock.trim();
    }

    public String getCommodityType() {
        return commodityType;
    }

    public void setCommodityType(String commodityType) {
        this.commodityType = commodityType == null ? null : commodityType.trim();
    }

    public String getCommodityInfo() {
        return commodityInfo;
    }

    public void setCommodityInfo(String commodityInfo) {
        this.commodityInfo = commodityInfo == null ? null : commodityInfo.trim();
    }

    public String getCommodityCreateTime() {
        return commodityCreateTime;
    }

    public void setCommodityCreateTime(String commodityCreateTime) {
        this.commodityCreateTime = commodityCreateTime == null ? null : commodityCreateTime.trim();
    }

    public String getCommodityCreateDate() {
        return commodityCreateDate;
    }

    public void setCommodityCreateDate(String commodityCreateDate) {
        this.commodityCreateDate = commodityCreateDate == null ? null : commodityCreateDate.trim();
    }

    public String getCommodityUpdateTime() {
        return commodityUpdateTime;
    }

    public void setCommodityUpdateTime(String commodityUpdateTime) {
        this.commodityUpdateTime = commodityUpdateTime == null ? null : commodityUpdateTime.trim();
    }

    public String getCommodityUpdateDate() {
        return commodityUpdateDate;
    }

    public void setCommodityUpdateDate(String commodityUpdateDate) {
        this.commodityUpdateDate = commodityUpdateDate == null ? null : commodityUpdateDate.trim();
    }

    public String getCommodityDueTime() {
        return commodityDueTime;
    }

    public void setCommodityDueTime(String commodityDueTime) {
        this.commodityDueTime = commodityDueTime == null ? null : commodityDueTime.trim();
    }

    public String getCommodityDueDate() {
        return commodityDueDate;
    }

    public void setCommodityDueDate(String commodityDueDate) {
        this.commodityDueDate = commodityDueDate == null ? null : commodityDueDate.trim();
    }
}