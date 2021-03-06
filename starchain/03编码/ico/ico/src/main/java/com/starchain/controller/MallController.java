package com.starchain.controller;

import com.starchain.po.MallCommodity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/8/31.
 */

@Controller
@RequestMapping(value = "/mall")
public class MallController {
    @RequestMapping(value = "/toCommodity")
    public String toCommodity(){
        return "/shop_commodity";
    }

    @RequestMapping(value = "/addCommodity")
    public String addCommodity(){
        return "/shop_addCommodity";
    }


    @RequestMapping(value = "/addCommodity",method = RequestMethod.POST)
    @ResponseBody
    public String addCommodity(@RequestBody  MallCommodity mallCommodity){
        System.out.println(mallCommodity.getCommodityName());
        return "success";
    }


}
