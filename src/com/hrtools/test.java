package com.hrtools;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
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
		
		int count=0;
		String c="",a="",p="",o1="",o2="",o3="";
		c=request.getParameter("fav_language");
		a=request.getParameter("fav_language1");
		p=request.getParameter("fav_language2");
		o1=request.getParameter("fav_language3");
		o2=request.getParameter("fav_language4");
		o3=request.getParameter("fav_language5");
		
		if(c.equals("HTML")){
			count+=2;
			
		}else if(c.equals("CSS")){
			count+=1;
		}else{
			
		}
		
		if(a.equals("HTML")){
			count+=2;
		}else if(a.equals("CSS")){
			count+=1;
		}else{
			
		}
		

		if(o1.equals("q1")){
			count+=3;
		}else if(o1.equals("q2")){
			count+=2;
		}else{
			count+=1;
		}
		if(o2.equals("q4")){
			count+=3;
		}else if(o2.equals("q5")){
			count+=2;
		}else{
			count+=1;
		}
		if(o3.equals("q7")){
			count+=3;
		}else if(o3.equals("q8")){
			count+=2;
		}else{
			count+=1;
		}
		System.out.println(count);
		if(count==15){
			response.sendRedirect("sucess.html");
		}
	}

}
