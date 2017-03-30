package com.ziqu.util;

import com.ziqu.entity.PhoneCodeEntity;

import java.util.Date;

/**
 * Created by administrator on 17/3/26.
 */
public class VerifyCodeUtil {

    public static String generateVerifyCode(){
        StringBuffer sb = new StringBuffer();
        for(int i=0;i<6;i++){
            sb.append((int)(Math.random()*9+1));
        }
        return sb.toString();
    }

    public static String generateToken(PhoneCodeEntity phoneCodeEntity){
        StringBuffer sb = new StringBuffer();
        for(int i = 0;i<phoneCodeEntity.getNumber().length();i++){
            int tempNum = phoneCodeEntity.getNumber().charAt(i);
            sb.append((char)(tempNum+17));
        }
        for(int i=0;i<phoneCodeEntity.getCode().length();i++){
            int tempNum = phoneCodeEntity.getCode().charAt(i);
            sb.append((char)(tempNum+17));
        }
        return sb.toString();
    }

    public static boolean checkInvitationSend(PhoneCodeEntity phoneCodeEntity){
        Date now = new Date();
        return (now.getTime()-phoneCodeEntity.getCreateTime().getTime())/1000 < 50;
    }

    public static boolean checkInvatationValid(PhoneCodeEntity phoneCodeEntity){
        Date now = new Date();
        return (now.getTime()-phoneCodeEntity.getCreateTime().getTime())/1000/60 < 15;
    }


    public static boolean checkInveteDate(Date inviteDate){
        Date now = new Date();
        return (now.getTime()-inviteDate.getTime())/1000/60/60/24 < 7;
    }


}