package com.ziqu.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ziqu.entity.SystemRegionEntity;
import com.ziqu.service.SystemRegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by administrator on 17/3/23.
 */


@Controller
@RequestMapping(value = "/ziqu/region")
public class SystemRegionController {


    @Autowired
    private SystemRegionService systemRegionService;

    @ResponseBody
    @RequestMapping(value = "/list.data", method = RequestMethod.GET)
    public JsonObject listRegion(int parentId){

        Gson gson=new Gson();
        JsonObject jsonObject = new JsonObject();

        List<SystemRegionEntity>  systemRegionEntities = systemRegionService.listSystemRegionByParent(parentId);

        jsonObject.addProperty("total", systemRegionEntities.size());
        jsonObject.add("datas", gson.toJsonTree(systemRegionEntities));
        return jsonObject;
    }
}
