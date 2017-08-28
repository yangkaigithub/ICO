package com.starchain.po;

public class MallOrder {
    String orderId;
    String costumerId;
    String orderCommodityId;
    int orderCommodityCnt;
    Float orderPrice;
    String orderStatus;
    String orderAddress;
    String orderPhone;
    String orderCreateTime;
    String orderCreateDate;
    String orderUpdateTime;
    String orderUpdateDate;

    @Override
    public String toString() {
        return "MallOrder{" +
                "orderId='" + orderId + '\'' +
                ", costumerId='" + costumerId + '\'' +
                ", orderCommodityId='" + orderCommodityId + '\'' +
                ", orderCommodityCnt='" + orderCommodityCnt + '\'' +
                ", orderPrice=" + orderPrice +
                ", orderStatus='" + orderStatus + '\'' +
                ", orderAddress='" + orderAddress + '\'' +
                ", orderPhone='" + orderPhone + '\'' +
                ", orderCreateTime='" + orderCreateTime + '\'' +
                ", orderCreateDate='" + orderCreateDate + '\'' +
                ", orderUpdateTime='" + orderUpdateTime + '\'' +
                ", orderUpdateDate='" + orderUpdateDate + '\'' +
                '}';
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getCostumerId() {
        return costumerId;
    }

    public void setCostumerId(String costumerId) {
        this.costumerId = costumerId;
    }

    public String getOrderCommodityId() {
        return orderCommodityId;
    }

    public void setOrderCommodityId(String orderCommodityId) {
        this.orderCommodityId = orderCommodityId;
    }

    public int getOrderCommodityCnt() {
        return orderCommodityCnt;
    }

    public void setOrderCommodityCnt(int orderCommodityCnt) {
        this.orderCommodityCnt = orderCommodityCnt;
    }

    public Float getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Float orderPrice) {
        this.orderPrice = orderPrice;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public String getOrderPhone() {
        return orderPhone;
    }

    public void setOrderPhone(String orderPhone) {
        this.orderPhone = orderPhone;
    }

    public String getOrderCreateTime() {
        return orderCreateTime;
    }

    public void setOrderCreateTime(String orderCreateTime) {
        this.orderCreateTime = orderCreateTime;
    }

    public String getOrderCreateDate() {
        return orderCreateDate;
    }

    public void setOrderCreateDate(String orderCreateDate) {
        this.orderCreateDate = orderCreateDate;
    }

    public String getOrderUpdateTime() {
        return orderUpdateTime;
    }

    public void setOrderUpdateTime(String orderUpdateTime) {
        this.orderUpdateTime = orderUpdateTime;
    }

    public String getOrderUpdateDate() {
        return orderUpdateDate;
    }

    public void setOrderUpdateDate(String orderUpdateDate) {
        this.orderUpdateDate = orderUpdateDate;
    }
}
