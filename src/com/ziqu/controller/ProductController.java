package com.ziqu.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ziqu.entity.ProductCatEntity;
import com.ziqu.entity.ProductEntity;
import com.ziqu.service.ProductCatService;
import com.ziqu.service.ProductImgService;
import com.ziqu.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */

@Controller
@RequestMapping(value = "/ziqu/product")
public class ProductController {

    @Autowired
    private ProductCatService productCatService;

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductImgService productImgService;

    @ResponseBody
    @RequestMapping(value = "/products.data", method = RequestMethod.GET)
    public JsonObject getProduct(@RequestHeader("user-agent") String userAgent, int type){
        Gson gson=new Gson();
        JsonObject jsonObject = new JsonObject();

        List<ProductCatEntity> productCatEntities = productCatService.getProductCatsByType(type);
        for(ProductCatEntity productEntity: productCatEntities){
            productEntity.setProductEntities(productService.getProductByCat(productEntity.getId()));
        }
        jsonObject.addProperty("total", productCatEntities.size());
        jsonObject.add("datas", gson.toJsonTree(productCatEntities));
        return jsonObject;
    }

    @ResponseBody
    @RequestMapping(value = "/prospe.data", method = RequestMethod.GET)
    public JsonObject getSpe(@RequestHeader("user-agent") String userAgent, String sn){
        Gson gson = new Gson();
        JsonObject jsonObject = new JsonObject();

        if(!StringUtils.isEmpty(sn)){
            ProductEntity productEntity = productService.getProductBySn(sn);
            if(productEntity != null){
                productEntity.setProductImgEntities(productImgService.getProductImgBySn(sn));
                jsonObject.add("data", gson.toJsonTree(productEntity));
            }
        }

        return jsonObject;
    }

    @ResponseBody
    @RequestMapping(value = "/prospes.data", method = RequestMethod.POST)
    public JsonObject getSpes(@RequestHeader("user-agent") String userAgent, String sns){
        Gson gson = new Gson();
        JsonObject jsonObject = new JsonObject();


        List<ProductEntity> productEntities = new ArrayList<ProductEntity>();
        if(sns.indexOf(";") > 0){
            String[] arraySns = sns.split(";");
            if(arraySns.length > 0){
                productEntities = productService.getProductsBySns(Arrays.asList(arraySns));
            }
        }

        jsonObject.add("data",gson.toJsonTree(productEntities));
        return jsonObject;
    }

}
