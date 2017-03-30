package com.ziqu.controller;

import com.google.gson.JsonObject;
import com.ziqu.entity.PhoneCodeEntity;
import com.ziqu.service.PhoneCodeService;
import com.ziqu.util.VerifyCodeUtil;
import com.ziqu.util.autowired.SmsUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by administrator on 17/3/26.
 */


@Controller
@RequestMapping(value = "/ziqu/sms")
public class SmsController {

    @Autowired
    private SmsUtil smsUtil;

    @Autowired
    private PhoneCodeService phoneCodeService;

    @ResponseBody
    @RequestMapping(value = "/send.do", method = RequestMethod.GET)
    public JsonObject sendSms(String mobile){
        JsonObject jsonObject = new JsonObject();

        if(StringUtils.isEmpty(mobile)){
            jsonObject.addProperty("code", 300);
            jsonObject.addProperty("msg", "缺少参数");
            return jsonObject;
        }

        PhoneCodeEntity phoneCodeEntity = null;
        List<PhoneCodeEntity> phoneCodeEntities = phoneCodeService.getPhoneCodeByNum(mobile);
        if(phoneCodeEntities.size() > 0){
            phoneCodeEntity = phoneCodeEntities.get(0);
        }
        if(null == phoneCodeEntity){
            phoneCodeEntity = new PhoneCodeEntity();
            phoneCodeEntity.setNumber(mobile);
        }else{
            //检查获取验证码过于频繁
            if(VerifyCodeUtil.checkInvitationSend(phoneCodeEntity)){
                jsonObject.addProperty("code", 300);
                jsonObject.addProperty("msg", "获取验证码过于频繁");
                return jsonObject;
            }
        }

        phoneCodeEntity.setCode(VerifyCodeUtil.generateVerifyCode());
        phoneCodeEntity.setCreateTime(new Date());
        phoneCodeEntity.setToken(VerifyCodeUtil.generateToken(phoneCodeEntity));

        List<String> phoneList = new ArrayList<>();
        phoneList.add(mobile);
        //if(smsUtil.sendSms(phoneList, phoneCodeEntity.getCode())){
        if(smsUtil.sendSms(phoneList, "同事您好，感谢您对此次测试的配合。123456")){
            if(phoneCodeEntities.size() > 0){
                phoneCodeService.updatePhoneCode(phoneCodeEntity);
            }else{
                phoneCodeService.savePhoneCode(phoneCodeEntity);
            }
        }else{
            jsonObject.addProperty("code", 301);
            jsonObject.addProperty("msg", "系统错误");
            return jsonObject;
        }

        jsonObject.addProperty("code", 200);
        jsonObject.addProperty("msg", "发送成功");
        return jsonObject;
    }

    @ResponseBody
    @RequestMapping(value = "/verify.do", method = RequestMethod.GET)
    public JsonObject verifyCode(String mobile,String code){
        JsonObject jsonObject = new JsonObject();

        if(StringUtils.isEmpty(mobile) || StringUtils.isEmpty(code)){
            jsonObject.addProperty("code",301);
            jsonObject.addProperty("msg","缺少参数");
            return jsonObject;
        }

        List<PhoneCodeEntity> phoneCodeEntities = phoneCodeService.getPhoneCodeByNum(mobile);
        if(phoneCodeEntities.size() > 0){
            PhoneCodeEntity phoneCodeEntity = phoneCodeEntities.get(0);
            if(mobile.equalsIgnoreCase(phoneCodeEntity.getNumber())
                    && code.equalsIgnoreCase(phoneCodeEntity.getCode())
                    && VerifyCodeUtil.checkInvatationValid(phoneCodeEntity)){
                jsonObject.addProperty("code",200);
                jsonObject.addProperty("msg",phoneCodeEntity.getToken());
                return jsonObject;
            }
        }

        jsonObject.addProperty("code",301);
        jsonObject.addProperty("msg","验证码不正确");
        return jsonObject;
    }
}
