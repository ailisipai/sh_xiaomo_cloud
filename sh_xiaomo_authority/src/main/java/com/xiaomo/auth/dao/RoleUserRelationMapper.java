package com.xiaomo.auth.dao;

import com.xiaomo.auth.pojo.RoleUserRelation;

public interface RoleUserRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoleUserRelation record);

    int insertSelective(RoleUserRelation record);

    RoleUserRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleUserRelation record);

    int updateByPrimaryKey(RoleUserRelation record);
}