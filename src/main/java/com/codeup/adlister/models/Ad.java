package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String images;
    private String description;

    public Ad(long id, long userId, String title, String images, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.images = images;
        this.description = description;
    }



    public Ad(long userId, String title, String images, String description) {
        this.userId = userId;
        this.title = title;
        this.images = images;
        this.description = description;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
