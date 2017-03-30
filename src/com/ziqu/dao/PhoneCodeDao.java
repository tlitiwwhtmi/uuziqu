package com.ziqu.dao;

import com.ziqu.entity.PhoneCodeEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/26.
 */
public interface PhoneCodeDao {

    List<PhoneCodeEntity> getPhoneCodeByNum(String number);

    List<PhoneCodeEntity> getPhoneCodeByToken(String token);

    int savePhoneCode(PhoneCodeEntity phoneCodeEntity);

    int updatePhoneCode(PhoneCodeEntity phoneCodeEntity);
}
