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
 * Servlet implementation class addjob
 */
@WebServlet("/addjob")
public class addjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addjob() {
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
		int jid=0;
		boolean o=true,c=true,e=true,a=true,n=true;
		String title= request.getParameter("title");
		String description= request.getParameter("desc");
		String salary=request.getParameter("salary");
		String qualities="";
		String experience=request.getParameter("exp");
		try
		{
			if(request.getParameter("openness").equals("openness"))
			{
				o=true;
				qualities+=("openness,");
			}
		}
		catch(java.lang.NullPointerException ae)
		{
			o=false;
		}
		try
		{
			if(request.getParameter("conscientiousness").equals("conscientiousness"))
			{
				c=true;
				qualities+=("conscientiousness,");
			}
		}catch(java.lang.NullPointerException ae)
		{
			c=false;
		}
		try
		{	
			if(request.getParameter("extraversion").equals("extraversion"))
			{
				e=true;  
				qualities+=("extraversion,");
			}
		}catch(java.lang.NullPointerException ae)
		{
			e=false;
		}
		try
		{
			if(request.getParameter("agreeableness").equals("agreeableness"))
			{
				a=true;
				qualities+=("agreeableness,");
			}
		}catch(java.lang.NullPointerException ae)
		{
			a=false;
		}
		
		try
		{	
			if(request.getParameter("neuroticism").equals("neuroticism"))
			{
				n=true;
				qualities+=("neuroticism,");
			}
		}catch(java.lang.NullPointerException ae)
		{
			n=false;
		}
		
		
		try{
		Connection con=DbConnection.connect();
			
			PreparedStatement psmt=con.prepareStatement("insert into job values(?,?,?,?,?,?,?)");
			psmt.setInt(1,jid);
			psmt.setInt(2, Values.getHrid());
			psmt.setString(3,title);
			psmt.setString(4, description);
			psmt.setString(5, salary);
			psmt.setString(6, qualities);
			psmt.setString(7, experience);
			int i=psmt.executeUpdate();
			if(i>0){
				response.sendRedirect("hrdash.html");
			}else{
				response.sendRedirect("fail.html");
			}
			PreparedStatement psmt1=con.prepareStatement("select * from job");
			ResultSet rs=psmt1.executeQuery();
			while(rs.next())
			{
				Values.setIdj(rs.getInt(1));
				System.out.println(Values.getIdj());
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
