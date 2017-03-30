package com.ziqu.util.autowired;

import com.ziqu.common.CommonConst;
import com.ziqu.util.CHttpPost;

import java.util.Arrays;
import java.util.List;

/**
 * Created by administrator on 17/3/26.
 * 使用autowired自动注入的Util类
 */
public class SmsUtil {

    private String ip;
    private String port;

    private String strUserId;
    private String strPwd;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public String getStrPwd() {
        return strPwd;
    }

    public void setStrPwd(String strPwd) {
        this.strPwd = strPwd;
    }

    public String getStrUserId() {
        return strUserId;
    }

    public void setStrUserId(String strUserId) {
        this.strUserId = strUserId;
    }

    public boolean sendSms(List<String> numbers, String content){
        String strSubPort="*";//扩展子号 （不带请填星号*，长度不大于6位）;
        String strUserMsgId="0";//用户自定义流水号，不带请输入0（流水号范围-（2^63）……2^63-1）
        CHttpPost sms=new CHttpPost();//短信请求业务类
        StringBuffer strPtMsgId=new StringBuffer("");//如果成功，存流水号。失败，存错误码。

        StringBuffer phone = new StringBuffer();
        for(String number: numbers){
            phone.append(number).append(",");
        }

        String phoneStr = phone.substring(0, phone.length()-1);

        String result=sms.SendSms(strPtMsgId, ip,port,strUserId, strPwd, phoneStr, content, strSubPort, strUserMsgId) + "";
        System.out.println(result);
        if(!Arrays.asList(CommonConst.SMS_ERROR_CODES).contains(result)){
            return true;
        }
        return false;

    }
}
