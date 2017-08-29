package com.starchain.controller;


import com.starchain.po.MallAuctionState;
import com.starchain.po.MallCommodity;
import com.starchain.po.MallOrder;
import com.starchain.service.MallAuctionStateService;
import com.starchain.service.MallCommodityService;
import com.starchain.service.MallOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/test")
public class TestController {
    @Autowired
    private MallCommodityService mallCommodityService;

    @Autowired
    private MallOrderService mallOrderService;

    @Autowired
    private MallAuctionStateService mallAuctionStateService;


    @RequestMapping(value = "/addCommodity")
    public @ResponseBody String addCommodity(){
        mallCommodityService.addCommodity(new MallCommodity());
        return "success";
    }


    @RequestMapping(value = "/addOrder")
    public @ResponseBody String addOrder(){
        mallOrderService.addOrder(new MallOrder());
        return "success";
    }

    @RequestMapping(value = "/addAuction")
    public @ResponseBody String addAuction(){
        mallAuctionStateService.addAucionState(new MallAuctionState());
        return "success";
    }
    @RequestMapping(value="/tomall")
    public String tomall(){
        return "/mall";
    }

}
