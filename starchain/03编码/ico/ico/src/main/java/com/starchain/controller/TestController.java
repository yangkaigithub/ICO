package com.starchain.controller;


import com.starchain.po.MallAuctionState;
import com.starchain.po.MallCommodity;
import com.starchain.po.MallOrder;
import com.starchain.service.MallAuctionStateService;
import com.starchain.service.MallCommodityService;
import com.starchain.service.MallOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;

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
        return "/shop_mall";
    }

    @RequestMapping("/auction")
    public @ResponseBody String auction(){
        Calendar calendar=Calendar.getInstance();
        calendar.set(2017, Calendar.AUGUST, 30, 21, 55);
//        LocalDateTime localDateTime =  LocalDateTime.of(2017, 8, 30, 16, 40);
        mallAuctionStateService.startAuction(calendar.getTime());
        return "success";
    }

}
