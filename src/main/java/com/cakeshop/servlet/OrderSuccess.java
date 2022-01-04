package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;
import com.cakeshop.model.Cart;

/**
 * Servlet implementation class OrderSuccess
 */
@WebServlet("/Order")
public class OrderSuccess extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();		
		int quantity=Integer.parseInt(request.getParameter("quantity"));		
		String userName=(String) session.getAttribute("CurrentUser");		
		UserDaoImpl userDao=new UserDaoImpl();
		int userId=userDao.findUserId(userName);
		String address=request.getParameter("city");	
		
		System.out.println("user id:"+userId);
		System.out.println("user Name:"+userName);
		
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
		Date orderDate=null;
		 try {
			 orderDate=sdf.parse(request.getParameter("orderDate"));
				double price1=(double)(session.getAttribute("Price"));	
				
				double totalPrice=(price1*quantity);		
				
				WalletDaoImpl walletDao=new WalletDaoImpl();
				
				int userWallet=walletDao.walletbal(userId);				
				System.out.println("userWallet"+userWallet);
				 double wallbal=userWallet -totalPrice;
				 System.out.println("price"+price1);
				 System.out.println("totalprice"+totalPrice);
				 
				 System.out.println("walletbalance"+wallbal);
				 
				 walletDao.updatewallet(wallbal,userId);	
				 
				 int cakeId=Integer.parseInt(session.getAttribute("cake_id").toString());
				 
				Cart cart=new Cart(cakeId,userId,quantity,totalPrice,orderDate);
				CartDaoImpl cartDao=new CartDaoImpl();
				cartDao.insertCart(cart);
				
				response.sendRedirect("OrderSuccess.jsp");
				
		 } catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	
		
	
	}

}