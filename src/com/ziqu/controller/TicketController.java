package com.ziqu.controller;

import com.google.gson.JsonObject;
import com.ziqu.entity.TicketInfoEntity;
import com.ziqu.service.TicketService;
import com.ziqu.util.MD5Encrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by administrator on 17/3/30.
 */

@Controller
@RequestMapping(value = "/ziqu/ticket")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    @ResponseBody
    @RequestMapping(value = "/verify.do", method = RequestMethod.POST)
    public JsonObject verifyTicket(String ticketNum,String pwd){
        JsonObject jsonObject = new JsonObject();

        if(StringUtils.isEmpty(ticketNum) || StringUtils.isEmpty(pwd)){
            jsonObject.addProperty("code",301);
            jsonObject.addProperty("data","缺少参数");
            return jsonObject;
        }

        //检查兑换券是否存在
        List<TicketInfoEntity> ticketInfoEntities = ticketService.getTicketByNum(ticketNum);
        if(ticketInfoEntities.size() == 0){
            jsonObject.addProperty("code",301);
            jsonObject.addProperty("data","兑换券不存在");
            return jsonObject;
        }

        //验证兑换券密码是否正确
        TicketInfoEntity ticketInfoEntity = ticketInfoEntities.get(0);
        if(!MD5Encrypt.encrypt(pwd).equals(ticketInfoEntity.getTicketPwd())){
            jsonObject.addProperty("code",301);
            jsonObject.addProperty("data","密码不正确");
            return jsonObject;
        }

        //检查兑换券状态
        //TODO

        //检查兑换券是否过期
        Calendar calendarTicket = Calendar.getInstance();
        calendarTicket.setTime(ticketInfoEntity.getCreateTime());
        calendarTicket.add(Calendar.YEAR,3);

        Calendar calendarNow = Calendar.getInstance();
        calendarNow.setTime(new Date());

        if(calendarTicket.before(calendarNow)){
            jsonObject.addProperty("code",301);
            jsonObject.addProperty("data","兑换券已过期");
            return jsonObject;
        }

        return jsonObject;
    }
}
