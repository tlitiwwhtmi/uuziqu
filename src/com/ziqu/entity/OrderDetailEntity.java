package com.ziqu.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by administrator on 17/3/24.
 */

@Entity
@Table(name = "order_detail")
public class OrderDetailEntity {

    private int id;

    private String orderNum;

    private String goodsSn;

    private int num;

    private double price;

    private String detailExt;


    @Column(name="detail_ext")
    public String getDetailExt() {
        return detailExt;
    }

    public void setDetailExt(String detailExt) {
        this.detailExt = detailExt;
    }

    @Column(name="goods_sn")
    public String getGoodsSn() {
        return goodsSn;
    }

    public void setGoodsSn(String goodsSn) {
        this.goodsSn = goodsSn;
    }

    @Id
    @Column(name = "id",unique = true,nullable = false)
    @GeneratedValue(generator = "idGenerator")
    @GenericGenerator(name = "idGenerator",strategy = "increment")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "num")
    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Column(name = "order_num")
    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    @Column(name = "price")
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
