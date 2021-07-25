package com.xiaomo.auth.dao;

import com.xiaomo.auth.pojo.RoleInfo;

public interface RoleInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoleInfo record);

    int insertSelective(RoleInfo record);

    RoleInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleInfo record);

    int updateByPrimaryKey(RoleInfo record);
}