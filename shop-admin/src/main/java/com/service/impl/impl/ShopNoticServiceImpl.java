package com.service.impl.impl;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ShopNoticMapper;
import com.model.ShopNotic;
import com.service.impl.ShopNoticService;
@Service
public class ShopNoticServiceImpl implements ShopNoticService{
	@Autowired
	private ShopNoticMapper shopNoticMapper;
	@Override
	public List<ShopNotic> selAllShopNotic(ShopNotic shopNotic) {
		if(shopNotic.getCreateTime()==null){
			
			shopNotic.setCreateTime(new Date(1,1,1));
		}
		if (shopNotic.getUpdateTime()==null) {
			shopNotic.setUpdateTime(new Date());
		}
		List<ShopNotic>shopNotics =shopNoticMapper.selAllShopNotic(shopNotic);
		return shopNotics;
	}

	@Override
	public ShopNotic updateShopNotic(ShopNotic shopNotic) {
		if(shopNotic.getId()==-1){
			//新增，直接返回
			return shopNotic;
			
		}else{ 
			//修改 ，信息回显
			ShopNotic sn=shopNoticMapper.selectByPrimaryKey(shopNotic.getId());
			return sn;
		}
	}

	@Override
	public boolean upShopNotic(ShopNotic shopNotic) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteById(ShopNotic shopNotic) {
		if(shopNoticMapper.deleteByPrimaryKey(shopNotic.getId())>0){
			return true;
		}
		return false;
	}

		
	

}
