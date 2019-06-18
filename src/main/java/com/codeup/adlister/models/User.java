package com.codeup.adlister.models;

public class User {
    private long id;
    private String username;
    private String email;
    private String preferences;
    private String password;

    public User() {
    }

    public User(String username, String email, String preferences, String password) {
        this.username = username;
        this.email = email;
        this.preferences = preferences;
        this.password = password;
    }


    public User(long id, String username, String email, String preferences, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.preferences = preferences;
        this.password = password;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPreferences() {
        return preferences;
    }

    public void setPreferences(String preferences) {
        this.preferences = preferences;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
