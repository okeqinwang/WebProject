package com.eliteams.quick4j.web.service;

import java.util.List;
import com.eliteams.quick4j.core.generic.GenericService;
import com.eliteams.quick4j.web.model.Permission;


public interface TaskService extends GenericService<Permission, Long> {

    /**
     * 通过角色id 查询角色 拥有的权限
     * 
     * @param roleId
     * @return
     */
    List<Permission> selectPermissionsByRoleId(Long roleId);

}
