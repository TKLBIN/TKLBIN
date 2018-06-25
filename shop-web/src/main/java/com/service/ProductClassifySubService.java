package com.service;

import java.util.List;

import com.model.ProductClassifySub;

public interface ProductClassifySubService {
	
	
	
	ProductClassifySub selectById(ProductClassifySub productClassifySub);
	List<ProductClassifySub> select(ProductClassifySub productClassifySub);

}
