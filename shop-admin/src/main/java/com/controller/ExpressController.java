package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.Express;
import com.service.impl.impl.ExpressServiceImpl;

@Controller
@RequestMapping("/express")
public class ExpressController {
@Autowired
private ExpressServiceImpl expressServiceImpl;

@RequestMapping("/selsectExpress")
public String selsectExpress(Express express,HttpServletRequest request){
		List<Express>expresses= expressServiceImpl.selAllExpress(express);
		request.setAttribute("expresses", expresses);
		return "express/list-express";
	}
@RequestMapping("/updateexpress")
public String updateexpress(Express express,HttpServletRequest request){
	Express exp=expressServiceImpl.updateExpress(express);
	request.setAttribute("exp", exp);
	return "express/edit-express";
}

@RequestMapping("/upexpress")
public String upexpress(Express express,@RequestParam(value="filImg") MultipartFile file,HttpServletRequest request) throws IllegalStateException, IOException{
	String fileName = file.getOriginalFilename();
	String realPath = request.getServletContext().getRealPath("/upload");
	String filePath = realPath + File.separator + fileName;
	File uploadFile = new File(filePath);
	file.transferTo(uploadFile);
	String showPath = request.getContextPath()+"/upload/"+fileName;
	express.setExpressImg(showPath);
	if(expressServiceImpl.upExpress(express)){
		return "redirect:selsectExpress";
	}
		return "";  
}

@RequestMapping("/deleteById")
public String deleteById(Express express){
	expressServiceImpl.deleteById(express);
	return "redirect:selsectExpress";
}
                         
}
