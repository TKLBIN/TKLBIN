package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.model.ClassifyRelation;
import com.model.CommentContent;
import com.model.Product;
import com.model.ProductClassify;
import com.model.ProductClassifySub;
import com.model.ProductSku;
import com.model.ShopNotic;
import com.service.impl.ClassifyReLationServiceImpl;
import com.service.impl.ProductClassifyServiceImpl;
import com.service.impl.ProductClassifySubServiceImpl;
import com.service.impl.ProductServiceImpl;
import com.service.impl.ShopNoticServiceImpl;

@Controller
@RequestMapping("/home")
public class HomeController {

	@Autowired
	private ClassifyReLationServiceImpl crelImpl;
	@Autowired
	private ProductClassifyServiceImpl proClaImpl;
	@Autowired
	private ProductClassifySubServiceImpl proClaSubImpl;
	@Autowired
	private ShopNoticServiceImpl shopNoticServiceImpl;
	@Autowired
	private ProductServiceImpl productServiceImpl;

	/**
	 * 跳转到不同的界面
	 */
	@RequestMapping("jthome/{path}")
	public String jtPro(@PathVariable("path") String path) {
		return "/index/" + path;
	}

	/**
	 * 进入商品详情页时存入浏览cookie
	 * 
	 * @throws IOException
	 */
	@RequestMapping("/godetail")
	public String saveCookieAndGoDetail(@PathParam("id") String id, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws IOException {
		String historyId = "";
		Integer getdetail_id = Integer.parseInt(id);
		// 获取Cookie数据并遍历，看是否已经存在historyId这个Cookie
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				String name = cookie.getName();
				String value = cookie.getValue();
				if (name.equals("historyId")) {
					// 存在historyId这个cookie的话，就将它赋值给historyId这个变量
					historyId = value;
					session.setAttribute("foot", historyId);
					System.out.println("足迹:" + historyId);
				}
			}
		}
		// 当遍历=之后发现没有这个Cookie是，就创建historyId这个Cookie，并将商品id保存到其中
		if (historyId == null || historyId.equals("")) {
			id += ",";
			System.out.println(id);
			Cookie producthistoryCookie = new Cookie("historyId", id);
			// 设置cookie有效期10天
			producthistoryCookie.setMaxAge(60 * 60 * 24 * 10);
			response.addCookie(producthistoryCookie);
		} else {
			// 存在historyId这个Cookie时，就将最近浏览的id添加到字符串的最前面
			historyId = "," + historyId;
			historyId = historyId.replace("," + id + ",", ",");
			String rs = id + historyId;

			Cookie producthistoryCookie = new Cookie("historyId", rs);
			response.addCookie(producthistoryCookie);
		}	

		/*
		 * 开始获取具体的商品详情并写到前台页面
		 */
		Product product = productServiceImpl.getProDetail(getdetail_id);
		Integer count = productServiceImpl.getCount(getdetail_id);
		// System.out.println(product);
		List<CommentContent> cList = getCms(getdetail_id);
		request.setAttribute("detail", product);
		request.setAttribute("count", count);
		request.setAttribute("gcms", cList);
		return "/index/product-detail";
	}

	@RequestMapping("toHome")
	public String toHome(ClassifyRelation classifyRelation, ModelMap modelMap) {
		List<ClassifyRelation> listClassifyRelaition = crelImpl.selectAll(classifyRelation);

		for (ClassifyRelation cla : listClassifyRelaition) {
            System.out.println(cla.getProductClassify());
			ProductClassify p = proClaImpl.selectById(cla.getProductClassify());
			cla.setProductClassify(p);
			if (cla.getProductClassify1() != null) {
				ProductClassify p1 = proClaImpl.selectById(cla.getProductClassify1());
				cla.setProductClassify1(p1);
			}
		}

		List<ShopNotic> listShopNotic = shopNoticServiceImpl.selectAll();
		List<ProductClassify> listProCla = new ArrayList<>();
		listProCla.add(getProCla(9));
		listProCla.add(getProCla(10));
		listProCla.add(getProCla(11));
		listProCla.add(getProCla(12));
		listProCla.add(getProCla(13));
		modelMap.addAttribute("listProCla", listProCla);
		modelMap.addAttribute("listClaRel", listClassifyRelaition);
		modelMap.addAttribute("pro1", productServiceImpl.selectByPrimaryKey(7));
		modelMap.addAttribute("pro2", productServiceImpl.selectByPrimaryKey(8));
		modelMap.addAttribute("pro3", productServiceImpl.selectByPrimaryKey(9));
		modelMap.addAttribute("listShopNotic", listShopNotic);
		return "/index/home";
	}

	public ProductClassify getProCla(int id) {
		ProductClassify pc = new ProductClassify();
		pc.setId(id);
		ProductClassify p = proClaImpl.selectById(pc);
		List<ProductClassifySub> listProClaSub = new ArrayList<>();

		for (ProductClassifySub pcs : p.getListProClassifySub()) {
			ProductClassifySub p1 = proClaSubImpl.selectById(pcs);
			listProClaSub.add(p1);
		}
		p.setListProClassifySub(listProClaSub);
	
		return p;
	}

	@RequestMapping("toProductList")
	public String toProductList(ProductClassify productClassify, ProductClassifySub productClassifySub, Product product,
			ModelMap modelMap, 
			@RequestParam(required = true, defaultValue = "1") Integer page,
			@RequestParam(required = false, defaultValue = "8") Integer pageSize,
			HttpSession session) {
		System.out.println("我是商品名字" + product);
		System.out.println("我是商品分类" + productClassify);
		System.out.println("我是商品二级分类" + productClassifySub);
		List<ProductClassify> listProductClassify = new ArrayList<>();
		List<ProductClassifySub> listProductClassifySub = new ArrayList<>();
		
		List<Product> listPro = new ArrayList<>();
		List<String> listSearch = new ArrayList<>();
		if (product.getProductName() != null & product.getProductName() != "") {
			if (session.getAttribute("listSearch") != null) {
				listSearch = (List<String>) session.getAttribute("listSearch");
				if (listSearch.size() == 5) {
					listSearch.clear();
				}
			}
			listSearch.add(product.getProductName());
			session.setAttribute("listSearch", listSearch);
			PageHelper.startPage(page, pageSize);
			listPro = productServiceImpl.selectByProName(product);
			listProductClassify.add(listPro.get(0).getProductClassify());
			listProductClassifySub.add(listPro.get(0).getProductClassifySub());
			/*if (listPro.size()>1) {
				 for (int i=1;i<listPro.size();i++) {
					    for (ProductClassify p : listProductClassify) {
							if(p.getClassifyName().equals(listPro.get(i).getProductClassify().getClassifyName())){
							   break;	
							}
						}
						
					}
			}*/
            
		} else {
			listProductClassify = proClaImpl.selectClassify(productClassify);
			System.out.println(listProductClassify);
			listProductClassifySub = proClaSubImpl.select(productClassifySub);
			PageHelper.startPage(page, pageSize);
			listPro = productServiceImpl.selectByProName(product);
		}
		//分页
		PageInfo<Product> list = new PageInfo<Product>(listPro);
		
		if (page == 0) {
			page = 1;
		} else if (page > list.getPages()) {
			page = list.getPages();

		}else  if(page==-1){
			page = list.getPages();
		}
	
		List<Product> list2=list.getList();
		modelMap.addAttribute("listProductClassify", listProductClassify);
		modelMap.addAttribute("listProductClassifySub", listProductClassifySub);
		modelMap.addAttribute("listPro", list2);
		modelMap.addAttribute("searchName", product.getProductName());
		modelMap.addAttribute("count", listPro.size());
		modelMap.addAttribute("page", page);
		return "index/product-list";
	}
	
	
	@ResponseBody
	@RequestMapping("showProductById")
	public List<Product>  showProductById(@RequestParam(value="id") Integer id,
			@RequestParam(required = true, defaultValue = "1") Integer page,
			@RequestParam(required = false, defaultValue = "8") Integer pageSize){
		System.out.println(page);
		Product product=new Product();
		PageHelper.startPage(page, pageSize);
		product.setClassifyId(id);
		List<Product> listPros=productServiceImpl.selectByProName(product);
		             
		return listPros;
		
	}
	
	@ResponseBody
	@RequestMapping("showProductBySubId")
	public List<Product>  showProductBySubId(@RequestParam(value="id") Integer id,
			@RequestParam(required = true, defaultValue = "1") Integer page,
			@RequestParam(required = false, defaultValue = "8") Integer pageSize){
		Product product=new Product();
		product.setClassifySubId(id);
		PageHelper.startPage(page, pageSize);
		
		List<Product> listP=productServiceImpl.selectByProName(product);
		PageInfo<Product> listPr = new PageInfo<Product>(listP);
		List<Product> listPros=listPr.getList();
		System.out.println(listPros);             
		return listPros;
		             
	
	}

	/**
	 * 某件商品的全部评价
	 * 
	 * @param id
	 *            商品ID
	 * @return
	 */
	public List<CommentContent> getCms(Integer id) {
		return productServiceImpl.getCms(id);
	}

	/**
	 * 根据所选属性获取商品价格
	 */
	@ResponseBody
	@RequestMapping("price")
	public ProductSku getPriceByAttr(@RequestParam("d") String str, @RequestParam("id") Integer id) {
		System.out.println(str);
		String strs[] = str.split("/");
		// 将数组转list
		List<String> attr = new ArrayList<>(Arrays.asList(strs));
		for (int i = 0; i < attr.size(); i++) {
			for (int j = i + 1; j < attr.size(); j++) {
				if (attr.get(j).split(",")[1].equals(attr.get(i).split(",")[1])) {
					attr.set(i, attr.get(j));
					attr.remove(j);
				}
			}
		}
		//得到属性ID拼接
		String idString = "";
		//得到属性值拼接
		String val = "";
		for (int i=0;i<attr.size();i++) {
			if (i<attr.size()-1) {
				idString += attr.get(i).split(",")[1] + ",";
				val += attr.get(i).split(",")[0] + "-";
			}else {
				idString += attr.get(i).split(",")[1];
				val += attr.get(i).split(",")[0];
			}
		}
		System.out.println(idString);
		System.out.println(val);
		ProductSku pSku = new ProductSku();
		pSku.setProductId(id);
		pSku.setSkuId(idString);
		pSku.setSkuName(val);
		return productServiceImpl.getpsk(pSku);
	}
}
