package com.dao;

import java.util.List;

import com.model.Customer;
import com.model.ShopAddress;

public interface ShopAddressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopAddress record);

    int insertSelective(ShopAddress record);

    ShopAddress selectByPrimaryKey(Integer id);
    
    ShopAddress selectByCusIdAndDau(Customer customer);

    int updateByPrimaryKeySelective(ShopAddress record);

    int updateByPrimaryKey(ShopAddress record);
    //��ȡ�ջ���ַ
    List<ShopAddress> selectList(Customer customer);
    /**
     * �����ջ���ַ
     */
    boolean insertAdd(ShopAddress shopAddress);
    /**
     * �޸��ջ���ַ
     */
    boolean upAdd(ShopAddress shopAddress);
    //����Ĭ�ϵ�ַ
    boolean setmo(ShopAddress shopAddress);
    /**
     * ȡ��������ַ��Ĭ��
     */
    boolean qumo(ShopAddress shopAddress);
    
}