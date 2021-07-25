package com.xiaomo.auth.dao;

import com.xiaomo.auth.pojo.ResourceInfo;

public interface ResourceInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ResourceInfo record);

    int insertSelective(ResourceInfo record);

    ResourceInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ResourceInfo record);

    int updateByPrimaryKey(ResourceInfo record);
}