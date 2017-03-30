package com.ziqu.util.sms;

/**
 * Created by administrator on 17/3/26.
 */
public class MULTIX_MT
{
    private String strUserMsgId;/*用户自定义的消息编号*/
    private String strSpNumber;/*通道,可填完整,可不填,可填*,可只填扩展*/
    private String strMobile;/*手机号*/
    private String strBase64Msg;/*短信内容,需为base64编码,编码前为GBK*/

    public String getStrBase64Msg() {
        return strBase64Msg;
    }

    public void setStrBase64Msg(String strBase64Msg) {
        this.strBase64Msg = strBase64Msg;
    }

    public String getStrMobile() {
        return strMobile;
    }

    public void setStrMobile(String strMobile) {
        this.strMobile = strMobile;
    }

    public String getStrSpNumber() {
        return strSpNumber;
    }

    public void setStrSpNumber(String strSpNumber) {
        this.strSpNumber = strSpNumber;
    }

    public String getStrUserMsgId() {
        return strUserMsgId;
    }

    public void setStrUserMsgId(String strUserMsgId) {
        this.strUserMsgId = strUserMsgId;
    }


    //实体类的Get和Set方法，请补充(可以用开发工具生成)。

}
