package com.eliteams.quick4j.web.dao;

import java.util.List;

import com.eliteams.quick4j.core.generic.GenericDao;
import com.eliteams.quick4j.web.model.CaseDataModel;
import com.eliteams.quick4j.web.model.User;

public interface CaseDataMapper extends GenericDao<CaseDataModel, Long> {


    int deleteByPrimaryKey(Long id);

    int insert(CaseDataModel record);

    int insertSelective(User record);
    
    List<CaseDataModel> selectList();

    CaseDataModel selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CaseDataModel record);

    int updateByPrimaryKey(CaseDataModel record);
    
    List<CaseDataModel> queryCaseByName(String casename);
    
  
}