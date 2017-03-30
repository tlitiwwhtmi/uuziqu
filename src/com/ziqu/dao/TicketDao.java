package com.ziqu.dao;

import com.ziqu.entity.TicketInfoEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/30.
 */
public interface TicketDao {

    List<TicketInfoEntity> getTicketByNum(String ticketNum);
}
