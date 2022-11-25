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
 * Servlet implementation class addhr
 */
@WebServlet("/addhr")
public class addhr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addhr() {
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
		int hrid=0;
		String name= request.getParameter("name");
		String email= request.getParameter("hremail");
		String mob=request.getParameter("mobile");
		String pass= request.getParameter("psd");
		String des=request.getParameter("desi");
		try {
		Connection con=DbConnection.connect();
			
			PreparedStatement psmt=con.prepareStatement("insert into hr values(?,?,?,?,?,?)");
			psmt.setInt(1,hrid);
			psmt.setString(2, name);
			psmt.setString(3, email);
			psmt.setString(4, mob);
			psmt.setString(5, pass);
			psmt.setString(6, des);
			int i=psmt.executeUpdate();
			if(i>0){
				
				
				response.sendRedirect("index1.html");
			}else{
				response.sendRedirect("fail.html");
			}
			PreparedStatement psmt1=con.prepareStatement("select * from hr");
			ResultSet rs=psmt1.executeQuery();
			while(rs.next())
			{
				Values.setId(rs.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try{
			Connection con=DbConnection.connect();
		PreparedStatement psmt1=con.prepareStatement("select * from hr");
		ResultSet rs=psmt1.executeQuery();
		while(rs.next())
		{
			Values.setLoghr(rs.getInt(1));
		}
		}
		catch (SQLException e){
			response.sendRedirect("fail.html");
		}
		
	}

}
