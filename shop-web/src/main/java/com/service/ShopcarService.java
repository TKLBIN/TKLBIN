package com.service;

import java.util.List;

import com.model.ShoppingCar;
import com.model.ShoppingCarAttr;

public interface ShopcarService {
	/**
	 * 添加一条购物车
	 * @param car
	 * @return
	 */
	boolean insertCar(ShoppingCar car);
	/**
	 * 获取最新添加的购物车id
	 */
	int getCarId();
	/**
	 * 向购物车写入商品属性
	 */
	boolean insertCarShuxing(List<ShoppingCarAttr> carAttrs);
	
	
	public List<ShoppingCar> selCar(ShoppingCar shoppingCar);
}
