package com.nithiya.BackendMusical.Dao;
import java.util.List;
import com.nithiya.BackendMusical.Model.CategoryModel;

public interface CategoryDao {
	
		List<CategoryModel> getAllCategoryDetails();
		
		public CategoryModel getCategoryDetail(String id);
		
		void updateCategoryDetail(CategoryModel obj);
		void addCategory(CategoryModel obj);
	
		void deleteProduct(CategoryModel entity);
		
}
