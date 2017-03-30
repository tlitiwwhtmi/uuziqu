package com.ziqu.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ziqu.entity.HomeImgEntity;
import com.ziqu.service.HomeImgService;
import com.ziqu.util.SourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */

@Controller
@RequestMapping(value = "/ziqu/home")
public class HomeImgController {


    @Autowired
    private HomeImgService homeImgService;

    @ResponseBody
    @RequestMapping(value = "/homeimgs.data", method = RequestMethod.GET)
    public JsonObject getHomeImgs(@RequestHeader("user-agent") String userAgent){

        Gson gson=new Gson();
        JsonObject jsonObject = new JsonObject();

        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);

        List<HomeImgEntity> homeImgEntities = null;

        if(mobile){
            homeImgEntities = homeImgService.getHomeImgsByType(0);
        }else{
            homeImgEntities = homeImgService.getHomeImgsByType(1);
        }

        jsonObject.addProperty("total", homeImgEntities.size());
        jsonObject.add("datas", gson.toJsonTree(homeImgEntities));
        return jsonObject;
    }
}
