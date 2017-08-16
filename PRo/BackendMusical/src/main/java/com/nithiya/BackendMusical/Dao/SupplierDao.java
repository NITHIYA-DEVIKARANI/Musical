package com.nithiya.BackendMusical.Dao;
import java.util.List;
import com.nithiya.BackendMusical.Model.SupplierModel;
public interface SupplierDao {

	//Method for reading all category details
			List<SupplierModel> getAllSupplier();
			public SupplierModel getSupplierDetails(String id);
			
			void updateSupplierDetail(SupplierModel obj);
			void addSupplier(SupplierModel obj);
			void deleteProduct(SupplierModel entity);
			public List<SupplierModel> getAllCategories();
		
}
