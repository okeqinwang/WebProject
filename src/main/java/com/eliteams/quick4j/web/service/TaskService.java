package com.eliteams.quick4j.web.service;

import java.util.List;

import com.eliteams.quick4j.core.generic.GenericService;
import com.eliteams.quick4j.web.model.TaskModel;


public interface TaskService extends GenericService<TaskModel, Long> {

    List<TaskModel> selectPermissionsByRoleId(Long roleId);

}
