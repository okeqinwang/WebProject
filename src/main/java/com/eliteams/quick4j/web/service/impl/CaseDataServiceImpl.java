package com.eliteams.quick4j.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.eliteams.quick4j.core.generic.GenericDao;
import com.eliteams.quick4j.core.generic.GenericServiceImpl;
import com.eliteams.quick4j.web.dao.CaseDataMapper;
import com.eliteams.quick4j.web.model.CaseDataModel;
import com.eliteams.quick4j.web.model.User;
import com.eliteams.quick4j.web.service.CaseDataService;

/**
 * 用户Service实现类
 *
 * @author StarZou
 * @since 2014年7月5日 上午11:54:24
 */
@Service
public class CaseDataServiceImpl extends GenericServiceImpl<CaseDataModel, Long> implements CaseDataService {

    @Resource
    private CaseDataMapper casedataMapper;

	@Override
	public GenericDao<CaseDataModel, Long> getDao() {
		// TODO Auto-generated method stub
		return casedataMapper;
	}

	@Override
	public int insert(CaseDataModel model) {
		// TODO Auto-generated method stub
		return casedataMapper.insert(model);
				
	}

	@Override
	public int update(CaseDataModel model) {
		// TODO Auto-generated method stub
		return casedataMapper.updateByPrimaryKey(model);
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return casedataMapper.deleteByPrimaryKey(id);
	}

	@Override
	public CaseDataModel selectById(Long id) {
		// TODO Auto-generated method stub
		return casedataMapper.selectByPrimaryKey(id);
	}

}
