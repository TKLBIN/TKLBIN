package com.dao;
import java.util.List;


import com.model.Orders;

public interface OrdersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Integer id);
    
    //≤È—Ø∂©µ•
    List<Orders> selectByCusId(Orders orders);
    
    boolean updateOrderStatusById(Integer id);
    boolean confirmOrder(Integer id);
    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
    Orders selectById(Integer id);
}