package com.model;

import java.util.List;

public class Product {
	private Integer id;

	private String productName;

	private Integer productVolume;

	private Integer classifySubId;
    
    private Integer classifyId;

	private String productParam;

	private String coverImg;

	private String productDetail;


	private ProductSku pSku;

	/**
	 * 查询商品详情 ProductSku product_ad product_attr
	 * 
	 * @return
	 */
	private List<ProductAd> productAds;
	private List<ProductAttr> productAttrs;
	private List<ProductAttrValue> productAttrValues;

	public List<ProductAttrValue> getProductAttrValues() {
		return productAttrValues;
	}

	public void setProductAttrValues(List<ProductAttrValue> productAttrValues) {
		this.productAttrValues = productAttrValues;
	}

	public List<ProductAd> getProductAds() {
		return productAds;
	}

	public void setProductAds(List<ProductAd> productAds) {
		this.productAds = productAds;
	}

	public List<ProductAttr> getProductAttrs() {
		return productAttrs;
	}

	public void setProductAttrs(List<ProductAttr> productAttrs) {
		this.productAttrs = productAttrs;
	}

    private CommentContent commentContent;
    
    private ProductClassify productClassify;
    
    private ProductClassifySub productClassifySub;
   
    //模糊查询数字形式
    private Integer likeSearch;
    
    
    
    
   

    
    
	public Integer getLikeSearch() {
		return likeSearch;
	}

	public void setLikeSearch(Integer likeSearch) {
		this.likeSearch = likeSearch;
	}

	public Integer getClassifyId() {
		return classifyId;
	}

	public void setClassifyId(Integer classifyId) {
		this.classifyId = classifyId;
	}

	public CommentContent getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(CommentContent commentContent) {
		this.commentContent = commentContent;
	}

	public ProductClassify getProductClassify() {
		return productClassify;
	}

	public void setProductClassify(ProductClassify productClassify) {
		this.productClassify = productClassify;
	}

	public ProductClassifySub getProductClassifySub() {
		return productClassifySub;
	}

	public void setProductClassifySub(ProductClassifySub productClassifySub) {
		this.productClassifySub = productClassifySub;
	}

	public ProductSku getpSku() {

		return pSku;
	}

	public void setpSku(ProductSku pSku) {
		this.pSku = pSku;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName == null ? null : productName.trim();
	}

	public Integer getProductVolume() {
		return productVolume;
	}

	public void setProductVolume(Integer productVolume) {
		this.productVolume = productVolume;
	}

	public Integer getClassifySubId() {
		return classifySubId;
	}

	public void setClassifySubId(Integer classifySubId) {
		this.classifySubId = classifySubId;
	}

	public String getProductParam() {
		return productParam;
	}

	public void setProductParam(String productParam) {
		this.productParam = productParam == null ? null : productParam.trim();
	}

	public String getCoverImg() {
		return coverImg;
	}

	public void setCoverImg(String coverImg) {
		this.coverImg = coverImg == null ? null : coverImg.trim();
	}

	public String getProductDetail() {
		return productDetail;
	}


	
    public void setProductDetail(String productDetail) {
        this.productDetail = productDetail == null ? null : productDetail.trim();
    }

	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", productVolume=" + productVolume
				+ ", classifySubId=" + classifySubId + ", classifyId=" + classifyId + ", productParam=" + productParam
				+ ", coverImg=" + coverImg + ", productDetail=" + productDetail + ", pSku=" + pSku + ", productAds="
				+ productAds + ", productAttrs=" + productAttrs + ", productAttrValues=" + productAttrValues
				+ ", commentContent=" + commentContent + ", productClassify=" + productClassify
				+ ", productClassifySub=" + productClassifySub + ", likeSearch=" + likeSearch + "]";
	}
    
    
}