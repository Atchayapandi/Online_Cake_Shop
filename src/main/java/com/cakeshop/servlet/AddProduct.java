package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.Products;
import com.cakeshop.model.User1;

/**
 * Servlet implementation class AddProduct
 */
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String cake_name=request.getParameter("cakeName");
		String cake_description=request.getParameter("description");	
		String cake_price=request.getParameter("price");
		String category_name=request.getParameter("category");	
		
		ProductDaoImpl proDao=new ProductDaoImpl(cake_name,cake_description,cake_price,category_name);	    
		Products product=new Products();		
	    proDao.insertProduct(product);
		
		
		
		
		
		
		
		
		
		
		
		
		
		doGet(request, response);
	}

}
