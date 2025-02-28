/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ebs.entities;

/**
 *
 * @author HP
 */
public class User {
    private int cid;
    private String cname;
    private String email;
    private String password;
    private String address;
    private String type;

    public User(int cid, String cname, String email, String password, String address, String type) {
        this.cid = cid;
        this.cname = cname;
        this.email = email;
        this.password = password;
        this.address = address;
        this.type = type;
    }

    public User(String cname, String email, String password, String address, String type) {
        this.cname = cname;
        this.email = email;
        this.password = password;
        this.address = address;
        this.type = type;
    }

    public User() {
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
    
}
