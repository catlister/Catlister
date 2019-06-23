package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    List<User> allUsers();
    Long insert(User user);
    void updateProfile(User user);
    Long insertImage(User user);
}
