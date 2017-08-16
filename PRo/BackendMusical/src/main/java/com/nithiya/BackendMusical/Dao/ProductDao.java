package com.nithiya.BackendMusical.Dao;

import java.util.List;
import com.nithiya.BackendMusical.Model.ProductsModel;

public interface ProductDao
{
	List<ProductsModel> getAllProdcutsDetails();
	ProductsModel getCategoryDetail(String id);
	void updateCategoryDetail(ProductsModel obj);
	void addProducts(ProductsModel obj);
	public List<ProductsModel> getAllProducts();
	public void delete(ProductsModel obj);
	public ProductsModel findById(String id);
	public List<ProductsModel> getFilterProducts(int cid);
}
