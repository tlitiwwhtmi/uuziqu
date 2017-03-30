package com.ziqu.util.sms;

/**
 * Created by administrator on 17/3/26.
 */
public class MO_PACK
{
    private String strMoTime; /*上行时间*/
    private String strMobile; /*上行手机号*/
    private String strSpNumber; /*上行通道号*/
    private String strExNo;     /*上行扩展子号*/
    private String strReserve;  /*预留字段*/
    private String strMessage;  /*上行内容*/

    //实体类的Get和Set方法，请补充(可以用开发工具生成)。


    public String getStrExNo() {
        return strExNo;
    }

    public void setStrExNo(String strExNo) {
        this.strExNo = strExNo;
    }

    public String getStrMessage() {
        return strMessage;
    }

    public void setStrMessage(String strMessage) {
        this.strMessage = strMessage;
    }

    public String getStrMobile() {
        return strMobile;
    }

    public void setStrMobile(String strMobile) {
        this.strMobile = strMobile;
    }

    public String getStrMoTime() {
        return strMoTime;
    }

    public void setStrMoTime(String strMoTime) {
        this.strMoTime = strMoTime;
    }

    public String getStrReserve() {
        return strReserve;
    }

    public void setStrReserve(String strReserve) {
        this.strReserve = strReserve;
    }

    public String getStrSpNumber() {
        return strSpNumber;
    }

    public void setStrSpNumber(String strSpNumber) {
        this.strSpNumber = strSpNumber;
    }
}
