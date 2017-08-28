package com.starchain.service;

import com.starchain.po.MallOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




public interface MallOrderService {
    public void addOrder(MallOrder mallOrder);
}
