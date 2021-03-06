package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import com.cakeshop.dao.impl.UserDaoImpl;

/**
 * Servlet implementation class EditProfile
 */
@WebServlet("/edit")
public class EditProfile extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		UserDaoImpl userDao=new UserDaoImpl();	
		
		int userId=(int)session.getAttribute("userId");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		double wallet=Double.parseDouble(request.getParameter("wallet"));
		String address=request.getParameter("address");
				
		userDao.EditUser(name, email, address,wallet,userId);
		
		response.sendRedirect("UserProfile.jsp");
		
		
		
		
		
		
	}

}
