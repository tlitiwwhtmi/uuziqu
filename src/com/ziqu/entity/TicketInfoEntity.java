package com.ziqu.entity;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by administrator on 17/3/27.
 */

@Entity
@Table(name = "ticket_info")
public class TicketInfoEntity {

    private int id;

    private String ticketNum;

    private String ticketPwd;

    private double ticketValue;

    private int ticketStatus;

    private String ticketOrder;

    private String ticketToken;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date offTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date usedTime;

    private String ticketExt;

    @Column(name = "create_time")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Id
    @Column(name = "id",unique = true,nullable = false)
    @GeneratedValue(generator = "idGenerator")
    @GenericGenerator(name = "idGenerator",strategy = "increment")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "off_time")
    public Date getOffTime() {
        return offTime;
    }

    public void setOffTime(Date offTime) {
        this.offTime = offTime;
    }

    @Column(name = "ticket_ext")
    public String getTicketExt() {
        return ticketExt;
    }

    public void setTicketExt(String ticketExt) {
        this.ticketExt = ticketExt;
    }

    @Column(name = "ticket_num")
    public String getTicketNum() {
        return ticketNum;
    }

    public void setTicketNum(String ticketNum) {
        this.ticketNum = ticketNum;
    }

    @Column(name = "ticket_order")
    public String getTicketOrder() {
        return ticketOrder;
    }

    public void setTicketOrder(String ticketOrder) {
        this.ticketOrder = ticketOrder;
    }

    @Column(name = "ticket_pwd")
    public String getTicketPwd() {
        return ticketPwd;
    }

    public void setTicketPwd(String ticketPwd) {
        this.ticketPwd = ticketPwd;
    }

    @Column(name = "ticket_status")
    public int getTicketStatus() {
        return ticketStatus;
    }

    public void setTicketStatus(int ticketStatus) {
        this.ticketStatus = ticketStatus;
    }

    @Column(name = "ticket_token")
    public String getTicketToken() {
        return ticketToken;
    }

    public void setTicketToken(String ticketToken) {
        this.ticketToken = ticketToken;
    }

    @Column(name = "ticket_value")
    public double getTicketValue() {
        return ticketValue;
    }

    public void setTicketValue(double ticketValue) {
        this.ticketValue = ticketValue;
    }

    @Column(name = "used_time")
    public Date getUsedTime() {
        return usedTime;
    }

    public void setUsedTime(Date usedTime) {
        this.usedTime = usedTime;
    }
}
