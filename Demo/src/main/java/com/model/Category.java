package com.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="productcategories")
public class Category {
@Id
private int CID;
@Column(name="category")
private String categoryName;
@OneToMany(mappedBy="category")
List<Product> products;
public int getCID() {
	return CID;
}
public void setCID(int cID) {
	CID = cID;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public List<Product> getProducts() {
	return products;
}
public void setProducts(List<Product> products) {
	this.products = products;
}

}
