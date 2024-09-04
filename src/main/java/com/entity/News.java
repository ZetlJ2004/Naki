package com.entity;

import java.time.LocalDateTime;

public class News {
    private int id;
    private String title;
    private LocalDateTime insertTime;
    private LocalDateTime updateTime;

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public LocalDateTime getInsertTime() {
        return insertTime;
    }

    public LocalDateTime getUpdateTime() {
        return updateTime;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setInsertTime(LocalDateTime insertTime) {
        this.insertTime = insertTime;
    }

    public void setUpdateTime(LocalDateTime updateTime) {
        this.updateTime = updateTime;
    }
}
