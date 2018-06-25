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
     * ���ﳵ����һ������
     */
    boolean insertCar(ShoppingCar car);
    /**
     * ��ȡ���һ�����ﳵid
     */
    int getShopCarId();
    /**
     * ���ﳵд���
     */
    boolean insertCarTable(List<ShoppingCarAttr> carAttrs);
    /**
     * ���ض���
     * @param shoppingCar 
     * @return
     */
	List<ShoppingCar> seldingdan(ShoppingCar shoppingCar);
    
}