package com.starchain.po;

public class User {
    private String userId;
    private String accountMail;
    private String userAlias;
    private String accountPhone;
    private String pwd;
    private String iDCardNo;
    private String iDCardName;
    private String iDCardFrontSide;
    private String iDCardBackSide;
    private String mailValidStatus;
    private String phoneValidStatus;
    private String iDCardValidStatus;
    private String bankCard;
    private double cashBalance;
    private double ethBalance;
    private String createDate;
    private String createTime;
    private String updateDate;
    private String updateTime;

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", accountMail='" + accountMail + '\'' +
                ", userAlias='" + userAlias + '\'' +
                ", accountPhone='" + accountPhone + '\'' +
                ", pwd='" + pwd + '\'' +
                ", iDCardNo='" + iDCardNo + '\'' +
                ", iDCardName='" + iDCardName + '\'' +
                ", iDCardFrontSide='" + iDCardFrontSide + '\'' +
                ", iDCardBackSide='" + iDCardBackSide + '\'' +
                ", mailValidStatus='" + mailValidStatus + '\'' +
                ", phoneValidStatus='" + phoneValidStatus + '\'' +
                ", iDCardValidStatus='" + iDCardValidStatus + '\'' +
                ", bankCard='" + bankCard + '\'' +
                ", cashBalance=" + cashBalance +
                ", ethBalance=" + ethBalance +
                ", createDate='" + createDate + '\'' +
                ", createTime='" + createTime + '\'' +
                ", updateDate='" + updateDate + '\'' +
                ", updateTime='" + updateTime + '\'' +
                '}';
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getAccountMail() {
        return accountMail;
    }

    public void setAccountMail(String accountMail) {
        this.accountMail = accountMail;
    }

    public String getUserAlias() {
        return userAlias;
    }

    public void setUserAlias(String userAlias) {
        this.userAlias = userAlias;
    }

    public String getAccountPhone() {
        return accountPhone;
    }

    public void setAccountPhone(String accountPhone) {
        this.accountPhone = accountPhone;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getiDCardNo() {
        return iDCardNo;
    }

    public void setiDCardNo(String iDCardNo) {
        this.iDCardNo = iDCardNo;
    }

    public String getiDCardName() {
        return iDCardName;
    }

    public void setiDCardName(String iDCardName) {
        this.iDCardName = iDCardName;
    }

    public String getiDCardFrontSide() {
        return iDCardFrontSide;
    }

    public void setiDCardFrontSide(String iDCardFrontSide) {
        this.iDCardFrontSide = iDCardFrontSide;
    }

    public String getiDCardBackSide() {
        return iDCardBackSide;
    }

    public void setiDCardBackSide(String iDCardBackSide) {
        this.iDCardBackSide = iDCardBackSide;
    }

    public String getMailValidStatus() {
        return mailValidStatus;
    }

    public void setMailValidStatus(String mailValidStatus) {
        this.mailValidStatus = mailValidStatus;
    }

    public String getPhoneValidStatus() {
        return phoneValidStatus;
    }

    public void setPhoneValidStatus(String phoneValidStatus) {
        this.phoneValidStatus = phoneValidStatus;
    }

    public String getiDCardValidStatus() {
        return iDCardValidStatus;
    }

    public void setiDCardValidStatus(String iDCardValidStatus) {
        this.iDCardValidStatus = iDCardValidStatus;
    }

    public String getBankCard() {
        return bankCard;
    }

    public void setBankCard(String bankCard) {
        this.bankCard = bankCard;
    }

    public double getCashBalance() {
        return cashBalance;
    }

    public void setCashBalance(double cashBalance) {
        this.cashBalance = cashBalance;
    }

    public double getEthBalance() {
        return ethBalance;
    }

    public void setEthBalance(double ethBalance) {
        this.ethBalance = ethBalance;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }


}
