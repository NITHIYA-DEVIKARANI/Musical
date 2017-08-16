package com.nithiya.Controller;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nithiya.BackendMusical.Dao.CategoryDao;
import com.nithiya.BackendMusical.Dao.ProductDao;
import com.nithiya.BackendMusical.Dao.SupplierDao;
import com.nithiya.BackendMusical.Model.CategoryModel;
import com.nithiya.BackendMusical.Model.ProductsModel;
import com.nithiya.BackendMusical.Model.SupplierModel;

@Controller
public class AddController {
	@Autowired
	CategoryDao categorys;
	@Autowired
	CategoryDao catsDao;
	@Autowired
	SupplierDao suppliers;
	@Autowired
	ProductDao products;

	@RequestMapping(value ="/add")
	public ModelAndView add() {

		List<CategoryModel> list=catsDao.getAllCategoryDetails();
		List<SupplierModel> slist=suppliers.getAllCategories();

		ModelAndView mv = new ModelAndView("Adding");
		mv.addObject("clist", list);
		mv.addObject("slist",slist);
		return mv;

	}

	@RequestMapping(value ="/category")
	public ModelAndView addcategory(HttpServletRequest request)
	{

		String c_id=String.valueOf(request.getParameter("cId"));
		String c_name=request.getParameter("cn");
		System.out.println(c_id+"---"+c_name);
		categorys.addCategory(new CategoryModel(c_id, c_name, null));
		List<CategoryModel> list=catsDao.getAllCategoryDetails();
		List<SupplierModel> slist=suppliers.getAllCategories();
		ModelAndView mv = new ModelAndView("Adding");
		mv.addObject("clist", list);
		mv.addObject("slist",slist);
		return mv;
	}

	@RequestMapping(value ="/supplier")
	public ModelAndView addsupplier(HttpServletRequest request)
	{

		String s_id=String.valueOf(request.getParameter("sId"));
		String s_name=request.getParameter("sn");
		System.out.println(s_id+"---"+s_name);
		suppliers.addSupplier(new SupplierModel(s_id, s_name));
		List<CategoryModel> list=catsDao.getAllCategoryDetails();
		List<SupplierModel> slist=suppliers.getAllCategories();

		ModelAndView mv = new ModelAndView("Adding");
		mv.addObject("clist", list);
		mv.addObject("slist",slist);
		return mv;


	}

	@RequestMapping(value ="/product" ,method=RequestMethod.POST)
	public ModelAndView addproduct(HttpServletRequest request)
	{

		String p_id=request.getParameter("pId");
		String p_name=request.getParameter("pn");
		String p_img=request.getParameter("pimg");
		String pdes=request.getParameter("pdes");
		int p_price=Integer.parseInt(request.getParameter("pp"));
		String p_cat=request.getParameter("pc");
		String p_sc=request.getParameter("psc");
		System.out.println(p_id+"---"+p_name+"---"+p_cat+"---"+p_price+"---"+p_img+p_sc);
		CategoryModel c=catsDao.getCategoryDetail(p_cat);
		SupplierModel s=suppliers.getSupplierDetails(p_sc);
		ProductsModel t=new ProductsModel();

		t.setProdId(p_id);

		t.setProdCategory(c);
		t.setProdName(p_name);
		t.setProdPrice(p_price);
		t.setProdSupplier(s);
		t.setProdDescription(pdes);
		System.out.println("in controllers");

		List<CategoryModel> list=catsDao.getAllCategoryDetails();
		List<SupplierModel> slist=suppliers.getAllCategories();
		String filepath = request.getSession().getServletContext().getRealPath("/");
		products.addProducts(t);
		/*String originalfile = file.getOriginalFilename();
		t.setProImage(originalfile);
		
		System.out.println(filepath+originalfile);		    
		try {
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"./resources/image/"+originalfile));
			fos.write(imagebyte);
			fos.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		ModelAndView mv = new ModelAndView("Adding");
		mv.addObject("clist", list);
		mv.addObject("slist",slist);
		return mv;
	}

}
