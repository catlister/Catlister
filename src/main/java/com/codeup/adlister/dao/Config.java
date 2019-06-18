package com.codeup.adlister.dao;
public class Config {
    public String getUrl() {
        return "jdbc:mysql://localhost/ad_lister?serverTimezone=UTC&useSSL=false";
    }
    public String getUser() {
        return "root";
    }
    public String getPassword() {
        return "codeup";
    }
}
