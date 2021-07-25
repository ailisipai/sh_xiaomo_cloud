package com.xiaomo.api.entities;

import java.io.Serializable;
import java.util.Date;

/**
 * 菜单资源列表
 */
public class ResourceInfo implements Serializable {
    private static final long serialVersionUID = -7476962171926898257L;
    private Long id;

    private Long pid;

    private String resourcePath;

    private String resourceAuth;

    private Date currentDate;

    private Long orderIndex;

    public Long getId() {
        return id;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public Long getPid() {
        return pid;
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