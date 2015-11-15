package com.eliteams.quick4j.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.eliteams.quick4j.core.generic.GenericDao;
import com.eliteams.quick4j.web.model.User;

/**
 * 用户Dao接口
 * 
 * @author StarZou
 * @since 2014年7月5日 上午11:49:57
 **/
public interface UserMapper extends GenericDao<User, Long> {


    int deleteByPrimaryKey(Long id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    List<User> selectByUserName(User user);

    /**
     * 用户登录验证查询
     * 
     * @param record
     * @return
     */
    User authentication(@Param("record") User record);
 
    
  
}