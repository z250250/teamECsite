package jp.co.internous.sky.model.form;

import java.io.Serializable;


public class SearchForm implements  Serializable {
	public static final long serialVersionUID = 1L;
	
	private int categoryId;
	private String productName;
	
	public int getCategoryId(){
		return categoryId;
	}
	
	public void setCategoryId(int categoryId) {
		this.categoryId=categoryId;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName=productName;
	}
}
