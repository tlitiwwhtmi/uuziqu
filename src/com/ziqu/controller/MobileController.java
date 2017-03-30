package com.ziqu.controller;

import com.ziqu.util.SourceUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by administrator on 17/3/16.
 */

@Controller
@RequestMapping(value = "/ziqu")
public class MobileController {

    @RequestMapping(value = "/play-m.htm", method = RequestMethod.GET)
    public String play(@RequestHeader("user-agent") String userAgent, ModelMap model) {
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        if(mobile){
            return "mobile/ziqu-play-m";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/list-m.htm", method = RequestMethod.GET)
    public String food(@RequestHeader("user-agent") String userAgent, String type, ModelMap model) {
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        if("1".equals(type)){
            model.addAttribute("title","趣玩");
        }else{
            model.addAttribute("title","趣吃");
        }
        model.addAttribute("type",type);
        if(mobile){
            return "mobile/ziqu-list-m";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/shopping-cart.htm", method = RequestMethod.GET)
    public String cart(@RequestHeader("user-agent") String userAgent, ModelMap model) {
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        if(mobile){
            return "mobile/ziqu-cart-m";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/confirm-m.htm", method = RequestMethod.GET)
    public String confirm(@RequestHeader("user-agent") String userAgent, ModelMap model){
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        if(mobile){
            return "mobile/ziqu-confirm-m";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/order-m.htm", method = RequestMethod.GET)
    public String orderList(@RequestHeader("user-agent") String userAgent, ModelMap model){
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        if(mobile){
            return "mobile/ziqu-order-list";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/verify-m.htm", method = RequestMethod.GET)
    public String verify(@RequestHeader("user-agent") String userAgent, ModelMap model){
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        if(mobile){
            return "mobile/ziqu-verify-m";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/pay-m.htm", method = RequestMethod.GET)
    public String pay(@RequestHeader("user-agent") String userAgent, String code, ModelMap model){
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);

        model.addAttribute("code",code);
        if(mobile){
            return "mobile/ziqu-pay-m";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/food-m.htm", method = RequestMethod.GET)
    public String food(@RequestHeader("user-agent") String userAgent, ModelMap model) {
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        if(mobile){
            return "mobile/ziqu-food-m";
        }else{
            return "pc/zi-qu-index";
        }
    }

    @RequestMapping(value = "/specific-m.htm", method = RequestMethod.GET)
    public String specific(@RequestHeader("user-agent") String userAgent, String sn, ModelMap model) {
        if(StringUtils.isEmpty(sn)){
            return "404";
        }
        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);
        model.addAttribute("sn", sn);
        if(mobile){
            return "mobile/ziqu-specific-m";
        }else{
            return "pc/zi-qu-index";
        }
    }
}
