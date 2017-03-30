package com.ziqu.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by administrator on 17/3/30.
 */
public class MD5Encrypt {

    private MD5Encrypt() {
    }

    private static char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7',
            '8', '9','a', 'b', 'c', 'd', 'e', 'f' };
    private static final String KEY = "#fi917!0k(8|kj";
    /**
     * 方法描述： MD5加密字符串 (高级加密、默认密钥、两次加密)
     * @param source  明文
     * @return                   密文(加密失败返回:null)
     */
    public static String  encrypt(String source){
        String temp = advEncrypt(source,KEY);
        return  advEncrypt(temp,KEY);
    }
    /**
     * 方法描述： MD5加密字符串 (高级加密、默认密钥、两次加密)
     * @param source  明文
     * @return                   密文(加密失败返回:null)
     */
    public static String  encrypt(byte[] source){
        if (null != source) {
            String temp = advEncrypt(source,KEY.getBytes());
            return  advEncrypt(temp,KEY);
        }
        return null;
    }

    /**
     * 方法描述：高级MD5加密(私有密钥、私有算法)
     * @param source  明文
     * @param key  密钥
     * @return        密文(加密失败返回:null)
     */
    public static String  advEncrypt(String source,String key){
        if (null != source && null != key) {
            return advEncrypt(source.getBytes(), key.getBytes());
        }
        return null;
    }

    /**
     * 方法描述：高级MD5加密(私有密钥、私有算法)
     * @param source  明文
     * @param key  密钥
     * @return                   密文(加密失败返回:null)
     */
    public static String  advEncrypt(byte[] source,byte[] key){
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.reset();
            md5.update(source);
            byte[] md = md5.digest(key);
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 方法描述：基本MD5加密(容易破解)
     * @param source  明文
     * @return                   密文(加密失败返回:null)
     */
    public static String baseEncrypt(String source) {
        if (null != source) {
            return baseEncrypt(source.getBytes());
        }
        return null;
    }

    /**
     * 方法描述：基本MD5加密(容易破解)
     * @param source  明文
     * @return                   密文(加密失败返回:null)
     */
    public static String baseEncrypt(byte[] source) {
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.reset();
            md5.update(source);
            byte digested[] = md5.digest();
            StringBuffer buffer = new StringBuffer();
            for (int i = 0; i < digested.length; i++) {
                byte b = digested[i];
                int value = (b & 0x7f) + (b >= 0 ? 0 : 128);
                buffer.append(value >= 16 ? "" : "0");
                buffer.append(Integer.toHexString(value));
            }
            return "".equals(buffer.toString()) ? null : buffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }
}
