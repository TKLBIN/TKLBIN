package com.dao;

import java.util.List;

import com.model.ShoppingCar;
import com.model.ShoppingCarAttr;

public interface ShoppingCarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShoppingCar record);

    int insertSelective(ShoppingCar record);

    ShoppingCar selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShoppingCar record);

    int updateByPrimaryKey(ShoppingCar record);
    /**
     * 向购物车新增一条数据
     */
    boolean insertCar(ShoppingCar car);
    /**
     * 获取最后一条购物车id
     */
    int getShopCarId();
    /**
     * 向购物车写入表
     */
    boolean insertCarTable(List<ShoppingCarAttr> carAttrs);
    /**
     * 返回订单
     * @param shoppingCar 
     * @return
     */
	List<ShoppingCar> seldingdan(ShoppingCar shoppingCar);
    
}