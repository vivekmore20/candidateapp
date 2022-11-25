package com.hrtools;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		doGet(request, response);
		
		String email=request.getParameter("uname");
		String pass=request.getParameter("psd");
		String choice=request.getParameter("fav_language");
		int a;
		Connection con=DbConnection.connect();
		if(choice.equals("admin"))
		{
		try {
		
		PreparedStatement psmt= con.prepareStatement("select * from admin where email=? and password=?");
			psmt.setString(1,email);
			psmt.setString(2, pass);
			ResultSet rs=psmt.executeQuery();
			if(rs.next())
			{
				
				response.sendRedirect("index1.html");
			}else{
				response.sendRedirect("fail.html");
			}
			
		}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
		
			try{
			PreparedStatement psmt1= con.prepareStatement("select * from hr where email=? and password=? ");
			psmt1.setString(1,email);
			psmt1.setString(2, pass);
			
			ResultSet rs1=psmt1.executeQuery();
			
			
			
			if(rs1.next()){
				response.sendRedirect("hrdash.html");
			}else{
				response.sendRedirect("fail.html");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		}
		
	}

}
