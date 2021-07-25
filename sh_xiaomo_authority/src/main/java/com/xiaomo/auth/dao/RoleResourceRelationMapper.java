package com.xiaomo.auth.dao;

import com.xiaomo.auth.pojo.RoleResourceRelation;

public interface RoleResourceRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoleResourceRelation record);

    int insertSelective(RoleResourceRelation record);

    RoleResourceRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleResourceRelation record);

    int updateByPrimaryKey(RoleResourceRelation record);
}