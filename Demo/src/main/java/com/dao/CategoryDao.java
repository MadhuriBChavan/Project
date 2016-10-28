package com.dao;

import java.util.List;

import com.model.Category;

public interface CategoryDao {
	List<Category> getAllCategory();
	void addCategory(Category category);
}
