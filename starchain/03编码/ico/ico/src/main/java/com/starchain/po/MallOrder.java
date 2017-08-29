package com.starchain.po;

import java.math.BigDecimal;

public class MallOrder {
    private String orderId;

    private String costumerId;

    private String orderCommodityId;

    private Integer orderCommodityCnt;

    private BigDecimal orderPrice;

    private String orderStatus;

    private String orderAddress;

    private String orderPhone;

    private String orderCreateTime;

    private String orderCreateDate;

    private String orderUpdateTime;

    private String orderUpdateDate;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    public String getCostumerId() {
        return costumerId;
    }

    public void setCostumerId(String costumerId) {
        this.costumerId = costumerId == null ? null : costumerId.trim();
    }

    public String getOrderCommodityId() {
        return orderCommodityId;
    }

    public void setOrderCommodityId(String orderCommodityId) {
        this.orderCommodityId = orderCommodityId == null ? null : orderCommodityId.trim();
    }

    public Integer getOrderCommodityCnt() {
        return orderCommodityCnt;
    }

    public void setOrderCommodityCnt(Integer orderCommodityCnt) {
        this.orderCommodityCnt = orderCommodityCnt;
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress == null ? null : orderAddress.trim();
    }

    public String getOrderPhone() {
        return orderPhone;
    }

    public void setOrderPhone(String orderPhone) {
        this.orderPhone = orderPhone == null ? null : orderPhone.trim();
    }

    public String getOrderCreateTime() {
        return orderCreateTime;
    }

    public void setOrderCreateTime(String orderCreateTime) {
        this.orderCreateTime = orderCreateTime == null ? null : orderCreateTime.trim();
    }

    public String getOrderCreateDate() {
        return orderCreateDate;
    }

    public void setOrderCreateDate(String orderCreateDate) {
        this.orderCreateDate = orderCreateDate == null ? null : orderCreateDate.trim();
    }

    public String getOrderUpdateTime() {
        return orderUpdateTime;
    }

    public void setOrderUpdateTime(String orderUpdateTime) {
        this.orderUpdateTime = orderUpdateTime == null ? null : orderUpdateTime.trim();
    }

    public String getOrderUpdateDate() {
        return orderUpdateDate;
    }

    public void setOrderUpdateDate(String orderUpdateDate) {
        this.orderUpdateDate = orderUpdateDate == null ? null : orderUpdateDate.trim();
    }
}