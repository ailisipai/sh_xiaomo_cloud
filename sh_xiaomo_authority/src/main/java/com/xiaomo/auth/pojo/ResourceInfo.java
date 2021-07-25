package com.xiaomo.auth.pojo;

import java.util.Date;

public class ResourceInfo {
    private Long id;

    private String resourcePath;

    private String resourceAuth;

    private Date currentDate;

    private Long orderIndex;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getResourcePath() {
        return resourcePath;
    }

    public void setResourcePath(String resourcePath) {
        this.resourcePath = resourcePath == null ? null : resourcePath.trim();
    }

    public String getResourceAuth() {
        return resourceAuth;
    }

    public void setResourceAuth(String resourceAuth) {
        this.resourceAuth = resourceAuth == null ? null : resourceAuth.trim();
    }

    public Date getCurrentDate() {
        return currentDate;
    }

    public void setCurrentDate(Date currentDate) {
        this.currentDate = currentDate;
    }

    public Long getOrderIndex() {
        return orderIndex;
    }

    public void setOrderIndex(Long orderIndex) {
        this.orderIndex = orderIndex;
    }
}