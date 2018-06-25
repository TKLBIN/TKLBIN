package com.service;

import java.util.List;

import com.model.CommentContent;
import com.model.Product;
import com.model.ProductSku;

public interface ProductService {
	
	  Product selectByPrimaryKey(Integer id);
	  /**
	   * 获取商品详情
	   */
	  	Product getProDetail(Integer id);
	  /**
	   * 获取具体某条商品的评价条数
	   */
	  Integer getCount(Integer id);
	  
	  List<Product> selectByProName(Product product);
	  /**
	   * 获取某家某商品的全部评价
	   */
	  List<CommentContent> getCms(Integer id);
	  /**
	   * 根据属性得到商品详情价格
	   * @param productSku
	   * @return
	   */
	  ProductSku getpsk(ProductSku productSku);
}
