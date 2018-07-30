package com.lizhi.model;
public class User {
    private String id;
    private String password;
    public String getSystemid() {
        return systemid;
    }
    public void setSystemid(String systemid) {
        this.systemid = systemid;
    }
    private String systemid;
    private boolean status;
    public User(){
        super();
    }
    public User(String id,String password,boolean b,String id2){
        super();
        this.id=id;
        this.password=password;
        this.status=b;
        this.systemid=id2;
    }
    public String getId() {
        return id;
    }
    public boolean isStatus() {
        return status;
    }
    public void setStatus(boolean status) {
        this.status = status;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}
