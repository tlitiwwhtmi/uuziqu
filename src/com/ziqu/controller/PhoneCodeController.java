package com.ziqu.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ziqu.entity.PhoneCodeEntity;
import com.ziqu.service.PhoneCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by administrator on 17/3/26.
 */

@Controller
@RequestMapping(value = "/ziqu/code")
public class PhoneCodeController {

    @Autowired
    private PhoneCodeService phoneCodeService;

    @ResponseBody
    @RequestMapping(value = "/query.do", method = RequestMethod.GET)
    public JsonObject queryCode(String token){
        Gson gson = new Gson();
        JsonObject jsonObject = new JsonObject();

        List<PhoneCodeEntity> phoneCodeEntities = phoneCodeService.getPhoneCodeByToken(token);
        if(phoneCodeEntities.size() == 0){
            jsonObject.addProperty("code", 301);
            jsonObject.addProperty("data", "未找到结果");
            return jsonObject;
        }

        PhoneCodeEntity phoneCodeEntity = phoneCodeEntities.get(0);
        phoneCodeEntity.setCode("");
        jsonObject.addProperty("code", 200);
        jsonObject.add("data", gson.toJsonTree(phoneCodeEntity));

        return jsonObject;
    }
}
