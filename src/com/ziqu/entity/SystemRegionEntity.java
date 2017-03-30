package com.ziqu.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by administrator on 17/3/23.
 */

@Entity
@Table(name = "system_region")
public class SystemRegionEntity {

    private int regionId;

    private int parentId;

    private String regionName;

    private String regionPy;

    private int regionType;

    private int agencyId;

    private double shippingFee;

    private String regionSn;

    private int supportCod;

    private int sortOrder;

    private int enable;


    @Column(name = "agency_id")
    public int getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(int agencyId) {
        this.agencyId = agencyId;
    }

    @Column(name="enable")
    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

    @Column(name="parent_id")
    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }


    @Id
    @Column(name = "region_id",unique = true, nullable = false)
    @GeneratedValue(generator = "idGenerator")
    @GenericGenerator(name = "idGenerator",strategy = "increment")
    public int getRegionId() {
        return regionId;
    }

    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }


    @Column(name="region_name")
    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    @Column(name="region_py")
    public String getRegionPy() {
        return regionPy;
    }

    public void setRegionPy(String regionPy) {
        this.regionPy = regionPy;
    }

    @Column(name="region_sn")
    public String getRegionSn() {
        return regionSn;
    }

    public void setRegionSn(String regionSn) {
        this.regionSn = regionSn;
    }

    @Column(name="region_type")
    public int getRegionType() {
        return regionType;
    }

    public void setRegionType(int regionType) {
        this.regionType = regionType;
    }

    @Column(name="shipping_fee")
    public double getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(double shippingFee) {
        this.shippingFee = shippingFee;
    }

    @Column(name="sort_order")
    public int getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(int sortOrder) {
        this.sortOrder = sortOrder;
    }

    @Column(name="support_cod")
    public int getSupportCod() {
        return supportCod;
    }

    public void setSupportCod(int supportCod) {
        this.supportCod = supportCod;
    }
}
