package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.model.CommentContent;
import com.model.Customer;
import com.model.CustomerCoupon;
import com.model.Product;
import com.model.ShopAddress;
import com.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserServiceImpl userimpl;

	/**
	 * 临时使用 不必理会
	 * 
	 * @param path
	 * @return
	 */
	@RequestMapping("jt/{path}")
	public String toLogin(@PathVariable("path") String path) {
		return path;
	}

	/**
	 * 跳转到个人中心
	 */
	@RequestMapping("/tocenter")
	public String toHome() {
		return "/person/usercenter";
	}

	/**
	 * 跳转到address
	 * 
	 * @return
	 */
	@RequestMapping("/toaddress")
	public String toAddress() {
		return "/person/address";
	}

	/**
	 * 跳转到指定界面
	 * 
	 * @param path
	 * @return
	 */
	@RequestMapping("jtpath/{path}")
	public String topath(@PathVariable("path") String path) {
		return "/person/" + path;
	}

	/**
	 * 可进行各项安全设置
	 * 
	 * @return
	 */
	@RequestMapping("/toSafe")
	public String toSafe() {
		return "/person/safety";
	}

	/**
	 * 登陆
	 * 
	 * //处理前台登录
	 * 
	 * @ResponseBody @RequestMapping("/doLogin") public String doLogin(Customer
	 *               customer,HttpSession session) { String
	 *               name=customer.getUsername(); String
	 *               pwd=customer.getPassword();
	 *               if(name!=null&&pwd!=null&&name!=""&&pwd!="") { Customer
	 *               loginUser=registerService.webLogin(customer);
	 *               if(loginUser!=null) {
	 *               //如果没有username就手动set一个随机名字存到session中，不会存到数据库中
	 *               if(loginUser.getUsername()==null) { int id=(int)
	 *               (Math.random()*30)+1; String username=arr[id];
	 *               loginUser.setUsername(username); }
	 *               System.out.println(loginUser);
	 *               session.setAttribute("loginUser", loginUser); return
	 *               "success"; } } return ""; }
	 * 
	 */
	@RequestMapping("login")
	@ResponseBody
	public String doLogin(Customer customer, HttpSession session) {
		customer.setEmail(customer.getUsername());
		customer.setTelephone(customer.getUsername());
		Customer user = userimpl.tologin(customer);
		if (user != null) {
			Integer num = 10;
			if (user.getTruename() != null) {
				num += 5;
			}
			if (user.getBirthday() != null) {
				num += 5;
				user.setBirthday(user.getBirthday().replaceAll("\\/", "-"));
			}
			if (user.getEmail() != null) {
				num += 10;
			}
			if (user.getHeadImg() != null) {
				num += 10;
			}
			if (user.getIdCard() != null) {
				num += 10;
			}
			if (user.getPayPassword() != null) {
				num += 10;
			}
			if (user.getNickname() != null) {
				num += 10;
			}
			if (user.getSex() != null) {
				num += 10;
			}
			if (user.getTelephone() != null) {
				num += 10;
			}
			if (user.getVipLevel() != null) {
				num += 10;
			}

			session.setAttribute("user", user);
			session.setAttribute("qi", 0);
			session.setAttribute("num", num);
			return "s";
		}
		return null;
	}

	/**
	 * 跳转到修改密码
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("toPwd")
	public String toPwd() {
		return "/person/password";
	}

	// 修改登陆密码
	@RequestMapping("toModifyPwd")
	public String doModifyPwd(Customer customer) {
		if (userimpl.pwdModifyById(customer)) {
			return "login";// 修改密码成功后返回登陆界面
		}
		return "";
	}

	/**
	 * 修改支付密码
	 * 
	 * @param customer
	 * @return
	 */
	@ResponseBody
	@RequestMapping("toModifyPay")
	public String doModifyPay(Customer customer, HttpSession session) {
		if (userimpl.modifyPay(customer)) {
			session.setAttribute("qi", 1);
			return "s";
		}
		return null;
	}

	@RequestMapping("toLogin")
	public String toLogin() {
		return "login";
	}

	@RequestMapping("toregister")
	public String toregister(Customer customer) {
		return "register";
	}

	@ResponseBody
	@RequestMapping("resEmail")
	public String resEmail(Customer customer) {
		Customer cus = userimpl.selectByEmail(customer);
		if (cus != null) {
			return "e";
		}
		return "";
	}

	@ResponseBody
	@RequestMapping("resPhone")
	public String resPhone(Customer customer) {
		Customer cus = userimpl.selectByPhone(customer);
		if (cus != null) {
			return "e";
		}
		return "";
	}

	@ResponseBody
	@RequestMapping("toDoregister")
	public String toDoregister(Customer customer) {
		if (userimpl.insert(customer)) {
			System.out.println("111");
			return "s";
		}
		return "e";

	}

	@RequestMapping("updateUser")
	public String updateUser(@RequestParam(value = "filImg") MultipartFile file, Customer customer,
			HttpServletRequest request) throws IllegalStateException, IOException {
		System.out.println(customer);
		// 获取文件名
		String fileName = file.getOriginalFilename();
		System.out.println(fileName);
		// 获取upload文件夹的绝对路径
		String realPath = request.getServletContext().getRealPath("/upload");
		// 写入文件
		// 拼接完整路径

		String filePath = realPath + File.separator + fileName;

		// 根据完整路径 创建File实例
		System.out.println(filePath);
		File uploadFile = new File(filePath);

		// 上传 调用MultipartFile对象的transferTo方法
		file.transferTo(uploadFile);
		// 获取相对路径 /SpringMvc_03/upload/图片名字

		String showPath = request.getContextPath() + "/upload/" + fileName;
		System.out.println(showPath);
		request.setAttribute("showPath", showPath);
		customer.setHeadImg(showPath);
		if (userimpl.updateCus(customer)) {
			return "login";
		}
		return "";

	}

	/**
	 * 修改绑定邮箱
	 */
	@ResponseBody
	@RequestMapping("toModifyEmail")
	public String doModifyEmail(Customer customer) {
		if (userimpl.modifyEmail(customer)) {
			return "s";
		}
		return null;
	}

	/**
	 * 绑定身份证
	 */
	@ResponseBody
	@RequestMapping("toModifyIdCard")
	public String doModifyIdCard(Customer customer) {
		// 获取身份证信息
		String idcard = customer.getIdCard();
		// 获取生日
		String birth = idcard.substring(6, 14);
		String year = birth.substring(0, 4);
		String month = birth.substring(4, 6);
		String day = birth.substring(6);
		// 拼接格式
		birth = year + "-" + month + "-" + day;
		System.out.println(birth);
		customer.setBirthday(birth);
		if (userimpl.modifyidcard(customer)) {
			return "s";
		}
		return null;
	}

	// 获取收货地址
	@RequestMapping("/asd")
	public String getAddress(Customer customer, ModelMap map) {
		List<ShopAddress> addresses = userimpl.getAdds(customer);
		map.addAttribute("adds", addresses);
		return "/person/address";
	}

	/**
	 * 修改/新增收货地址
	 * 
	 * @param shopAddress
	 * @return
	 */
	@ResponseBody
	@RequestMapping("modifyAdd")
	public String modifyAdd(ShopAddress shopAddress) {
		System.out.println(shopAddress);
		// 判断修改还是新增
		if (shopAddress.getId() != 0) {// 修改
			if (userimpl.upadd(shopAddress)) {
				return "s";
			} else
				return null;
		} else {// 新增
			if (userimpl.insertAdd(shopAddress)) {
				return "s";
			} else
				return null;
		}
	}

	/**
	 * 设置默认地址提交到后台
	 */
	@ResponseBody
	@RequestMapping("moren")
	public String subMoren(@RequestBody() List<Integer> id) {
		ShopAddress sAddress = new ShopAddress();
		// 设置默认地址
		sAddress.setId(id.get(1));
		boolean set = userimpl.setMo(sAddress);
		// 修改取消原默认地址
		sAddress.setId(id.get(0));
		boolean qu = userimpl.quMo(sAddress);
		if (set && qu) {
			return "s";
		}
		return null;
	}

	/**
	 * 删除收货地址
	 */
	@RequestMapping("deladd")
	@ResponseBody
	public String deladd(ShopAddress shopAddress) {
		Integer id = shopAddress.getId();
		if (userimpl.deladd(id)) {
			return "s";
		}
		return null;
	}

	/**
	 * 查询获取全部优惠卷信息
	 */
	@RequestMapping("getList")
	public String getCou(Customer customer, ModelMap map) {
		List<CustomerCoupon> list = userimpl.getCouponList(customer);
		List<String> code = new ArrayList<>();
		for (int j = 0; j < list.size(); j++) {
			String r = "";
			for (int i = 0; i < 7; i++) {
				r += (int) (Math.random() * 10);
			}
			code.add(r);
		}
		map.addAttribute("coups", list);
		map.addAttribute("code", code);
		return "/person/coupon";
	}

	/**
	 * 删除过期优惠券
	 */
	@ResponseBody
	@RequestMapping("/delCou")
	public String delCoupon(Integer id) {
		if (userimpl.delPathCou(id)) {
			return "s";
		}
		return null;
	}

	/**
	 * 足迹功能
	 */
	@RequestMapping("foot")
	public String getfoot(HttpSession session, ModelMap map) {
		String foot = (String) session.getAttribute("foot");
		if (foot != null) {
			String[] footId = foot.split(",");
			List<Product> footList = userimpl.footList(Arrays.asList(footId));
			System.out.println(footList);
			map.addAttribute("foolist", footList);
		}
		return "/person/foot";
	}

	/**
	 * 进入评价页获取数据
	 */
	@RequestMapping("/getCs")
	public String getComms(Customer customer,ModelMap map) {
		List<CommentContent> cList =
				userimpl.getComments(customer);
		map.addAttribute("comment", cList);
		return "/person/comment";
	}
}
