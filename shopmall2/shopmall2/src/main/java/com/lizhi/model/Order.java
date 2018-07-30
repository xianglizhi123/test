package com.lizhi.model;
public class Order {
    public String name;
    public String addr;
    public String price;
    public String orderid;
    public Order(){
        super();
    }
    public Order(String name, String addr, String price, String orderid) {
        super();
        this.name = name;
        this.addr = addr;
        this.price = price;
        this.orderid=orderid;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }
}
