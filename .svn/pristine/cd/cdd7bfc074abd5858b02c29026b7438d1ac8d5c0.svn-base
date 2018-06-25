package com.service.impl.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ExpressMapper;
import com.model.Express;
import com.service.impl.ExpressService;
@Service
public class ExpressServiceImpl implements ExpressService{
	@Autowired
	private ExpressMapper expressMapper;
	@Override
	public List<Express> selAllExpress(Express express) {
		List<Express>expressess =expressMapper.selAllExpress(express);
		return expressess;
	}

	@Override
	public Express updateExpress(Express express) {
		if(express.getId()==-1){
			//新增，直接返回
			return express;
			
		}else{ 
			//修改 ，信息回显
			Express exp=expressMapper.selectByPrimaryKey(express.getId());
			return exp;
		}
	}

	@Override
	public boolean upExpress(Express express) {
		if (express.getId()!=null) {
			//修改
			if(expressMapper.updateByPrimaryKeySelective(express)>0){
				return true;
			}
			return false;
		}else{
			//新增
		if(expressMapper.insertSelective(express)>0){
			return true;
		}
		return false;
		}
	
	}

	@Override
	public boolean deleteById(Express express) {
		if(expressMapper.deleteByPrimaryKey(express.getId())>0){
			return true;
		}
	

		return false;
	}

}
