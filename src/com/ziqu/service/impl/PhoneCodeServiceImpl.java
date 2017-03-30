package com.ziqu.service.impl;

import com.ziqu.dao.PhoneCodeDao;
import com.ziqu.entity.PhoneCodeEntity;
import com.ziqu.service.PhoneCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/26.
 */

@Service("ziqu.phoneCodeService")
public class PhoneCodeServiceImpl implements PhoneCodeService{

    @Autowired
    private PhoneCodeDao phoneCodeDao;

    public List<PhoneCodeEntity> getPhoneCodeByNum(String number) {
        return phoneCodeDao.getPhoneCodeByNum(number);
    }

    public List<PhoneCodeEntity> getPhoneCodeByToken(String token) {
        return phoneCodeDao.getPhoneCodeByToken(token);
    }

    public int savePhoneCode(PhoneCodeEntity phoneCodeEntity) {
        return phoneCodeDao.savePhoneCode(phoneCodeEntity);
    }

    public int updatePhoneCode(PhoneCodeEntity phoneCodeEntity) {
        return phoneCodeDao.updatePhoneCode(phoneCodeEntity);
    }
}
