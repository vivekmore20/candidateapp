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
 * Servlet implementation class details
 */
@WebServlet("/details")
public class details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public details() {
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
		int cid=0;
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String qualification=request.getParameter("qualification");
		String mobile= request.getParameter("mobile");
		String pass=request.getParameter("psd");
		String des=request.getParameter("desi");
		
		try {
		Connection con=DbConnection.connect();
			
			PreparedStatement psmt=con.prepareStatement("insert into candidate values(?,?,?,?,?,?,?,?,?)");
			psmt.setInt(1,cid);
			psmt.setInt(2,Values.getJobId());
			System.out.println(Values.getJobId());
			psmt.setString(3, name);
			psmt.setString(4, email);
			psmt.setString(5, qualification);
			psmt.setString(6, mobile);
			psmt.setString(7, pass);
			psmt.setString(8,des);
			psmt.setString(9, "NA");
			
			int i=psmt.executeUpdate();
			PreparedStatement psmt1=con.prepareStatement("select * from candidate");
			ResultSet rs=psmt1.executeQuery();
			while(rs.next())
			{
				Values.setCid(rs.getInt(1));
			}
			if(i>0){
				response.sendRedirect("question1.jsp");
			}else{
				response.sendRedirect("fail.html");
			}
					} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
