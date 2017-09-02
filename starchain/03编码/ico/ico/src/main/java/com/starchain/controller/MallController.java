package com.starchain.controller;

import com.starchain.po.MallCommodity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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



}
