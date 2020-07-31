package jp.co.internous.sky.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import jp.co.internous.sky.model.domain.MstCategory;
import jp.co.internous.sky.model.domain.MstProduct;
import jp.co.internous.sky.model.form.SearchForm;
import jp.co.internous.sky.model.mapper.MstCategoryMapper;
import jp.co.internous.sky.model.mapper.MstProductMapper;
import jp.co.internous.sky.model.session.LoginSession;


@Controller
@RequestMapping("/sky")
public class IndexController {
	
	@Autowired
	protected LoginSession loginSession;
	
	@Autowired
	MstCategoryMapper mstCategoryMapper;
	
	@Autowired
	MstProductMapper mstProductMapper;

	@RequestMapping("/")
	public String index( Model m) {
		
		Random random= new Random();
		int userId;
		
		if(loginSession.getLogined()) {
			userId=loginSession.getUserId();
		} else if(loginSession.getTmpUserId()==0) {
			userId = random.nextInt(999999998) -999999999;
			loginSession.setTmpUserId(userId);
		}else {
			userId=loginSession.getUserId();
		}
		
		List<MstCategory> categoryList=mstCategoryMapper.findAll();
		List<MstProduct> productList= mstProductMapper.findAll();
		
		m.addAttribute("categoryList",categoryList);
		m.addAttribute("productList",productList);
		m.addAttribute("loginSession",loginSession);
		m.addAttribute("selected",0);
		return "index";
	}
	
	@RequestMapping("/searchitem")
	public String Search(SearchForm s, Model m) {
		List<MstProduct> productList;
		List<MstCategory> categoryList=mstCategoryMapper.findAll();
		String productName = s.getProductName().replaceAll("　", " ").replaceAll("\\s{2,}", " ").trim();
		
		if(s.getCategoryId()==0) {
			productList= mstProductMapper.findByProductName(productName.split(" "));
		}else {
			productList= mstProductMapper.findByCategoryIdAndProductName(
					s.getCategoryId(),
					productName.split(" "));
		}
		m.addAttribute("productName",productName);
		m.addAttribute("select",s.getCategoryId());
		m.addAttribute("categoryList",categoryList);
		m.addAttribute("productList",productList);
		m.addAttribute("loginSession",loginSession);
	
		return "index";
	}
}
