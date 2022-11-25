<%@page import="com.hrtools.Values"%>
<%@page import="com.hrtools.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Responsive_table :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
<%@ page import="java.sql.*" %>

       

<%

	boolean O=false,C=false,E=false,A=false,N=false;
	int jid=0;
	jid=Values.getJobId();
	int hrid=Values.getHrid();
	System.out.println(jid);
	Connection con = DbConnection.connect();
	PreparedStatement psmt = con.prepareStatement("select * from job where jid=?");
	psmt.setInt(1,jid);
	ResultSet rs = psmt.executeQuery();
	rs.next();
	//int exp=2;
	if(rs.getString(6).contains("openness")){
		O=true;
	}
	if(rs.getString(6).contains("conscientiousness")){
		C=true;
	}
	if(rs.getString(6).contains("extroversion")){
		E=true;
	}
	if(rs.getString(6).contains("agreeableness")){
		A=true;
	}
	if(rs.getString(6).contains("neuroticism")){
		N=true;
	}
	String query = "select * from result where jid="+jid;
	if(O){
		query+=" and o>=10";
	}
	if(C){
		query+=" and c>=10";
	}
	if(E){
		query+=" and e>=10";
	}
	if(A){
		query+=" and a>=10";
	}
	if(N){
		query+=" and n>=10";
	}
	

	PreparedStatement psmt2 = con.prepareStatement(query);
//	psmt2.setInt(2,hrid);
	ResultSet rs2 = psmt2.executeQuery();
	PreparedStatement psmt3 = con.prepareStatement("select * from candidate where cid=?");
	
	//ResultSet rs3 = psmt3.executeQuery();
	//int qno=1;
%>

<section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
    <b> Shortlisted Candidate</b>
    </div>
    <div>
      <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
         
        <thead>
          <tr>
            <th data-breakpoints="xs">Candidate Id</th>
            <th>Job Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile No</th>
            <th>O</th>
            <th>C</th>
            <th>E</th>
            <th>A</th>
            <th>N</th>
          </tr>
        </thead>
        <tbody>
        <%while(rs2.next()){ %>
          <tr data-expanded="true">
            <td><%=rs2.getInt(2) %></td>
           
            <%	
            	psmt3.setInt(1,rs2.getInt(2));
            	ResultSet rs3 = psmt3.executeQuery();
            	rs3.next();
            %>
            <td><%=rs2.getInt(1) %>	</td>
            <td><%=rs3.getString(3) %></td>
            <td><%=rs3.getString(4) %></td>
            <td><%=rs3.getString(6) %></td>
            <td><%=rs2.getString(3) %></td>
            <td><%=rs2.getString(4) %></td>
            <td><%=rs2.getString(5) %></td>
            <td><%=rs2.getString(6) %></td>
            <td><%=rs2.getString(7) %></td>
          </tr>
          <%} %>
        </tbody>
      </table>
 <%
 		int a=Values.getCid();
 		PreparedStatement psmt4=con.prepareStatement("update candidate set status=? where cid=?");
 		psmt4.setString(1,"shortlisted");
 		psmt4.setInt(2,a);
 		int i=psmt4.executeUpdate();
 		
 
 %>     
      
      
      
      
    </div>
  </div>
</div>
</section> 
</body>
</html>