package com.ziqu.service;

import com.ziqu.entity.TicketInfoEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/27.
 */
public interface TicketService {

    List<TicketInfoEntity> getTicketByNum(String ticketNum);
}
