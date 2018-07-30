package com.lizhi.model;

public class Good {
    public String id;
    public String name;
    public String addr;
    public String price;
    public Good(){
        super();
    }

    public Good(String id, String name, String addr, String price) {
        super();
        this.id = id;
        this.name = name;
        this.addr = addr;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
}
