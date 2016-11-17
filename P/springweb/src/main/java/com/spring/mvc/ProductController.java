package com.spring.mvc;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import java.io.File;
import java.nio.file.Path;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Product;
import com.spring.model.Category;
import com.spring.services.ProductServices;

@Controller
public class ProductController {

	@Autowired
	private ProductServices productServices;

	public ProductServices getProductServices() {
		return productServices;
	}

	public void setProductServices(ProductServices productServices) {
		this.productServices = productServices;
	}

	
	@RequestMapping("/getProductsList")
	public @ResponseBody List<Product> getProductsListInJSON(){
		return productServices.getAllProducts();
	}
	
	@RequestMapping("/productListAngular")
	public String getProducts(){
		return "productList";
	}

	@RequestMapping("/getAllProducts")
	public ModelAndView getAllProducts() {
		List<Product> product = productServices.getAllProducts();
		return new ModelAndView("productList", "product", product);

	}

	@RequestMapping("getProductsByIsbn/{isbn}")
	public ModelAndView getProductByIsbn(@PathVariable(value = "isbn") int isbn) {
		Product product = productServices.getProductByIsbn(isbn);
		return new ModelAndView("productpage", "product", product);
	}

	@RequestMapping("delete/{isbn}")
	public String deleteProduct(@PathVariable(value = "isbn") int isbn) {

		Path paths = Paths
				.get("D:\\JAVAWORKSPACE\\springweb\\src\\main\\webapp\\WEB-INF\\resources\\images\\" + isbn + ".png");
		if (Files.exists(paths)) {
			try {
				Files.delete(paths);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}

		productServices.deleteProduct(isbn);

		return "redirect:/getAllProducts";
	}

	@RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.GET)
	public String getProductForm(Model model) {
		Product product = new Product();
		Category ca = new Category();
		ca.setCid(1);
		product.setCategory(ca);
		model.addAttribute("productFormObj", product);
		return "productForm";
	}

	@RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.POST)
	public String addProduct(@Valid@ModelAttribute(value = "productFormObj") Product product, BindingResult result) {
		if (result.hasErrors())
			return "productForm";
		
		productServices.addProduct(product);

		MultipartFile productImage = product.getProductImage();
		if (productImage != null && !productImage.isEmpty()) {
			Path paths = (Path) Paths.get("D:\\JAVAWORKSPACE\\springweb\\src\\main\\webapp\\WEB-INF\\resources\\images\\"
					+ product.getIsbn() + ".png");
			try {
				productImage.transferTo(new File(paths.toString()));
			} catch (IllegalStateException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

		}
		return "redirect:/getAllProducts";
	}

	@RequestMapping("/admin/product/editProduct/{isbn}")
	public ModelAndView getEditForm(@PathVariable(value = "isbn") int isbn) {
		Product product = this.productServices.getProductByIsbn(isbn);
		return new ModelAndView("editProductForm", "editProductObj", product);
	}

	@RequestMapping(value = "admin/product/editProduct", method = RequestMethod.POST)
	public String editProduct(@ModelAttribute(value = "editProductObj") Product product) {
		productServices.editProduct(product);
		return "redirect:/getAllProducts";
	}
	
	

}
