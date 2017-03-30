package com.ziqu.controller;

import com.ziqu.entity.ProductEntity;
import com.ziqu.entity.ProductImgEntity;
import com.ziqu.entity.TypeEntity;
import com.ziqu.service.ProductImgService;
import com.ziqu.service.ProductService;
import com.ziqu.service.TypeService;
import com.ziqu.util.SourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by administrator on 17/3/9.
 */
@Controller
@RequestMapping(value = "/ziqu")
public class IndexController {

    @Autowired
    private TypeService typeService;

    @Autowired
    private ProductImgService productImgService;

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/index.htm", method = RequestMethod.GET)
    public String printHello(@RequestHeader("user-agent") String userAgent, ModelMap model) {

        List<TypeEntity> typeEntityList = typeService.ListTypeEntity();
        for(TypeEntity typeEntity:typeEntityList){
            System.out.println(typeEntity.getTypeName());
        }
        List<ProductImgEntity> productImgEntities = productImgService.getProductImgBySn("abcda");
        System.out.println(productImgEntities.size());
        List<ProductEntity> productEntities = productService.getProductByType(2);
        System.out.println(productEntities.size());

        boolean mobile = SourceUtil.judgeIsMoblie(userAgent);

        if(mobile){
            return "mobile/ziqu-m";
        }else{
            return "pc/zi-qu-index";
        }
    }
}