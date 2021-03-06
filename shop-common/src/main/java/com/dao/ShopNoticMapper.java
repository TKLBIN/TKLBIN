package com.dao;

import java.util.List;

import com.model.ShopNotic;

public interface ShopNoticMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopNotic record);

    int insertSelective(ShopNotic record);

    ShopNotic selectByPrimaryKey(Integer id);
    
    List<ShopNotic> selectAll();

    int updateByPrimaryKeySelective(ShopNotic record);

    int updateByPrimaryKeyWithBLOBs(ShopNotic record);

    int updateByPrimaryKey(ShopNotic record);

	List<ShopNotic> selAllShopNotic(ShopNotic shopNotic);
}