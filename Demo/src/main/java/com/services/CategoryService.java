package com.services;

import java.util.List;

import com.model.Category;

public interface CategoryService {
	List<Category> getAllCategory();
	void addCategory(Category category);

}
