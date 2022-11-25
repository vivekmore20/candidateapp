package com.hrtools;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class questionadd
 */
@WebServlet("/questionadd")
public class questionadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public questionadd() {
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
		String question= request.getParameter("question");
		String o1= request.getParameter("q1");
		String o2=request.getParameter("q2");
		String o3= request.getParameter("q3");
		String o4= request.getParameter("q4");
		
		
		Connection con=DbConnection.connect();
		try {
			PreparedStatement psmt=con.prepareStatement("insert into question values(?,?,?,?,?,?)");
			psmt.setInt(1, 0);
			psmt.setString(2, question);
			psmt.setString(3, o1);
			psmt.setString(4, o2);
			psmt.setString(5, o3);
			psmt.setString(6, o4);
			int i=psmt.executeUpdate();
			if(i>0){
				
				
				response.sendRedirect("sucess.html");
			}else{
				response.sendRedirect("fail.html");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
