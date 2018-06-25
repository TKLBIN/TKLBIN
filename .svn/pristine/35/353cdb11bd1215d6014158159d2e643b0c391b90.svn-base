package com.dao;

import java.util.List;

import com.model.ClassifyRelation;
import com.model.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer id);
    List<ClassifyRelation> select(ClassifyRelation classifyRelation);
    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKeyWithBLOBs(Product record);

    int updateByPrimaryKey(Product record);
    /**
     * 足迹功能
     * @param foot
     * @return
     */
    List<Product> getfoots(List foot);
    /**
     * 进入商品详情页
     */
    Product getDetail(Integer id);

    List<Product> selectByProName(Product product);

}