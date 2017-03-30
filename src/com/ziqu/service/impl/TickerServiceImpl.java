package com.ziqu.service.impl;

import com.ziqu.dao.TicketDao;
import com.ziqu.entity.TicketInfoEntity;
import com.ziqu.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/30.
 */

@Service("ziqu.ticketService")
public class TickerServiceImpl implements TicketService{

    @Autowired
    private TicketDao ticketDao;

    public List<TicketInfoEntity> getTicketByNum(String ticketNum) {
        return ticketDao.getTicketByNum(ticketNum);
    }
}
