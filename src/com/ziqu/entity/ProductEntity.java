package com.ziqu.entity;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by administrator on 17/3/15.
 */

@Entity
@Table(name = "product_goods")
public class ProductEntity {

    private String goodsSn;

    private String outerGoodsSn;

    private String goodsName;

    private String goodsAlia;

    private String goodsTitle;

    private int catId;

    private String extCatPath;

    private String brandCode;

    private String clothesTypeCode;

    private int typeCode;

    private int goodsWeight;

    private double productPrice;

    private double marketPrice;

    private double shopPrice;

    private double wapPrice;

    private String keywords;

    private String goodsThumb;

    private String goodsImg;

    private String originalImg;

    private String goodsAdImg;

    private String goodsPromoImg;

    private String goodsBrief;

    private String goodsDesc;

    private String sizeInfo;

    private String sellerNote;

    private String vedioUrl;

    private String seasonCode;

    private String seriesCode;

    private String occasionCode;

    private String fashionCode;

    private String temCode;

    private String productWarranty;

    private String productIndex;

    private String materialCode;

    private String sizeCompareCode;

    private String extensionCode;

    private int shippingday;

    private int statisticDays;

    private String depotCode;

    private String seatCode;

    private int isAloneSale;

    private int isPresale;

    private int warnNumber;

    private int minCount;

    private int productDay;

    private List<ProductImgEntity> productImgEntities;

    private int count;

    private double orderPrice;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date addTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date lastUpdated;

    private int sortOrder;

    @Column(name = "add_time")
    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    @Column(name = "brand_code")
    public String getBrandCode() {
        return brandCode;
    }

    public void setBrandCode(String brandCode) {
        this.brandCode = brandCode;
    }

    @Column(name = "cat_id")
    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    @Column(name = "clothes_type_code")
    public String getClothesTypeCode() {
        return clothesTypeCode;
    }

    public void setClothesTypeCode(String clothesTypeCode) {
        this.clothesTypeCode = clothesTypeCode;
    }

    @Column(name = "depot_code")
    public String getDepotCode() {
        return depotCode;
    }

    public void setDepotCode(String depotCode) {
        this.depotCode = depotCode;
    }

    @Column(name = "ext_cat_path")
    public String getExtCatPath() {
        return extCatPath;
    }

    public void setExtCatPath(String extCatPath) {
        this.extCatPath = extCatPath;
    }

    @Column(name = "extension_code")
    public String getExtensionCode() {
        return extensionCode;
    }

    public void setExtensionCode(String extensionCode) {
        this.extensionCode = extensionCode;
    }

    @Column(name = "fashion_code")
    public String getFashionCode() {
        return fashionCode;
    }

    public void setFashionCode(String fashionCode) {
        this.fashionCode = fashionCode;
    }

    @Column(name = "goods_ad_img")
    public String getGoodsAdImg() {
        return goodsAdImg;
    }

    public void setGoodsAdImg(String goodsAdImg) {
        this.goodsAdImg = goodsAdImg;
    }

    @Column(name = "goods_alias")
    public String getGoodsAlia() {
        return goodsAlia;
    }

    public void setGoodsAlia(String goodsAlia) {
        this.goodsAlia = goodsAlia;
    }

    @Column(name = "goods_brief")
    public String getGoodsBrief() {
        return goodsBrief;
    }

    public void setGoodsBrief(String goodsBrief) {
        this.goodsBrief = goodsBrief;
    }

    @Column(name = "goods_desc")
    public String getGoodsDesc() {
        return goodsDesc;
    }

    public void setGoodsDesc(String goodsDesc) {
        this.goodsDesc = goodsDesc;
    }

    @Column(name = "goods_img")
    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    @Column(name = "goods_name")
    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    @Column(name = "goods_promo_img")
    public String getGoodsPromoImg() {
        return goodsPromoImg;
    }

    public void setGoodsPromoImg(String goodsPromoImg) {
        this.goodsPromoImg = goodsPromoImg;
    }

    @Id
    @Column(name = "goods_sn",unique = true,nullable = false)
    @GeneratedValue(generator = "idGenerator")
    @GenericGenerator(name = "idGenerator",strategy = "uuid")
    public String getGoodsSn() {
        return goodsSn;
    }

    public void setGoodsSn(String goodsSn) {
        this.goodsSn = goodsSn;
    }

    @Column(name = "goods_thumb")
    public String getGoodsThumb() {
        return goodsThumb;
    }

    public void setGoodsThumb(String goodsThumb) {
        this.goodsThumb = goodsThumb;
    }

    @Column(name = "goods_title")
    public String getGoodsTitle() {
        return goodsTitle;
    }

    public void setGoodsTitle(String goodsTitle) {
        this.goodsTitle = goodsTitle;
    }

    @Column(name = "goods_weight")
    public int getGoodsWeight() {
        return goodsWeight;
    }

    public void setGoodsWeight(int goodsWeight) {
        this.goodsWeight = goodsWeight;
    }

    @Column(name = "is_alone_sale")
    public int getIsAloneSale() {
        return isAloneSale;
    }

    public void setIsAloneSale(int isAloneSale) {
        this.isAloneSale = isAloneSale;
    }

    @Column(name = "is_presale")
    public int getIsPresale() {
        return isPresale;
    }

    public void setIsPresale(int isPresale) {
        this.isPresale = isPresale;
    }

    @Column(name = "keywords")
    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    @Column(name = "last_updated")
    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    @Column(name = "market_price")
    public double getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(double marketPrice) {
        this.marketPrice = marketPrice;
    }

    @Column(name = "material_code")
    public String getMaterialCode() {
        return materialCode;
    }

    public void setMaterialCode(String materialCode) {
        this.materialCode = materialCode;
    }

    @Column(name = "min_count")
    public int getMinCount() {
        return minCount;
    }

    public void setMinCount(int minCount) {
        this.minCount = minCount;
    }

    @Column(name = "occasion_code")
    public String getOccasionCode() {
        return occasionCode;
    }

    public void setOccasionCode(String occasionCode) {
        this.occasionCode = occasionCode;
    }

    @Column(name = "original_img")
    public String getOriginalImg() {
        return originalImg;
    }

    public void setOriginalImg(String originalImg) {
        this.originalImg = originalImg;
    }

    @Column(name = "outer_goods_sn")
    public String getOuterGoodsSn() {
        return outerGoodsSn;
    }

    public void setOuterGoodsSn(String outerGoodsSn) {
        this.outerGoodsSn = outerGoodsSn;
    }

    @Column(name = "product_day")
    public int getProductDay() {
        return productDay;
    }

    public void setProductDay(int productDay) {
        this.productDay = productDay;
    }

    @Column(name = "product_index")
    public String getProductIndex() {
        return productIndex;
    }

    public void setProductIndex(String productIndex) {
        this.productIndex = productIndex;
    }

    @Column(name = "product_price")
    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    @Column(name = "product_warranty")
    public String getProductWarranty() {
        return productWarranty;
    }

    public void setProductWarranty(String productWarranty) {
        this.productWarranty = productWarranty;
    }

    @Column(name = "season_code")
    public String getSeasonCode() {
        return seasonCode;
    }

    public void setSeasonCode(String seasonCode) {
        this.seasonCode = seasonCode;
    }

    @Column(name = "seat_code")
    public String getSeatCode() {
        return seatCode;
    }

    public void setSeatCode(String seatCode) {
        this.seatCode = seatCode;
    }

    @Column(name = "seller_note")
    public String getSellerNote() {
        return sellerNote;
    }

    public void setSellerNote(String sellerNote) {
        this.sellerNote = sellerNote;
    }

    @Column(name = "series_code")
    public String getSeriesCode() {
        return seriesCode;
    }

    public void setSeriesCode(String seriesCode) {
        this.seriesCode = seriesCode;
    }

    @Column(name = "shippingday")
    public int getShippingday() {
        return shippingday;
    }

    public void setShippingday(int shippingday) {
        this.shippingday = shippingday;
    }

    @Column(name = "shop_price")
    public double getShopPrice() {
        return shopPrice;
    }

    public void setShopPrice(double shopPrice) {
        this.shopPrice = shopPrice;
    }

    @Column(name = "size_compare_code")
    public String getSizeCompareCode() {
        return sizeCompareCode;
    }

    public void setSizeCompareCode(String sizeCompareCode) {
        this.sizeCompareCode = sizeCompareCode;
    }

    @Column(name = "size_info")
    public String getSizeInfo() {
        return sizeInfo;
    }

    public void setSizeInfo(String sizeInfo) {
        this.sizeInfo = sizeInfo;
    }

    @Column(name = "sort_order")
    public int getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(int sortOrder) {
        this.sortOrder = sortOrder;
    }

    @Column(name = "statistic_days")
    public int getStatisticDays() {
        return statisticDays;
    }

    public void setStatisticDays(int statisticDays) {
        this.statisticDays = statisticDays;
    }

    @Column(name = "tem_code")
    public String getTemCode() {
        return temCode;
    }

    public void setTemCode(String temCode) {
        this.temCode = temCode;
    }

    @Column(name = "type_code")
    public int getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(int typeCode) {
        this.typeCode = typeCode;
    }

    @Column(name = "vedio_url")
    public String getVedioUrl() {
        return vedioUrl;
    }

    public void setVedioUrl(String vedioUrl) {
        this.vedioUrl = vedioUrl;
    }

    @Column(name = "wap_price")
    public double getWapPrice() {
        return wapPrice;
    }

    public void setWapPrice(double wapPrice) {
        this.wapPrice = wapPrice;
    }

    @Column(name = "warn_number")
    public int getWarnNumber() {
        return warnNumber;
    }

    public void setWarnNumber(int warnNumber) {
        this.warnNumber = warnNumber;
    }

    @Transient
    public List<ProductImgEntity> getProductImgEntities() {
        return productImgEntities;
    }

    public void setProductImgEntities(List<ProductImgEntity> productImgEntities) {
        this.productImgEntities = productImgEntities;
    }

    @Transient
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Transient
    public double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(double orderPrice) {
        this.orderPrice = orderPrice;
    }
}
