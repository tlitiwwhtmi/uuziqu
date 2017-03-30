package com.ziqu.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by administrator on 17/3/17.
 */

@Entity
@Table(name = "home_imgs")
public class HomeImgEntity {

    private int id;

    private String imgUrl;

    // 1是pc端img,0是mobile端img
    private int type;

    private String imgExt;

    @Id
    @Column(name = "id",unique = true, nullable = false)
    @GeneratedValue(generator = "idGenerator")
    @GenericGenerator(name = "idGenerator",strategy = "increment")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "img_ext")
    public String getImgExt() {
        return imgExt;
    }

    public void setImgExt(String imgExt) {
        this.imgExt = imgExt;
    }

    @Column(name = "img_url")
    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    @Column(name = "img_type")
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
