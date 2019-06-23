package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    List<Ad> all();
    List<Ad> matchUserPref(String personality);
    Long insert(Ad ad);
    void updateAd(Ad ad);
    void delete(long id);
}
