<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DarkPan - Bootstrap 5 Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
<%@ page import="java.sql.*" %>
<%@page import="com.hrtools.DbConnection"%>

<%
	//int jid=Integer.parseInt(request.getParameter("jid"));
	//int cid=Integer.parseInt(request.getParameter("cid"));
	int jid=0,cid=0;
	Connection con = DbConnection.connect();
	PreparedStatement psmt = con.prepareStatement("select question from question");
	ResultSet rs = psmt.executeQuery();
	int qno=1;
%>
<section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     Personality Test
    </div>
    <div>
    <form action="result1.jsp?jid=<%=jid%>&cid=<%=cid%>" method="post">
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
            <th data-breakpoints="xs">QNo.</th>
            <th>Question</th>
            <th data-breakpoints="xs">Options</th>
          </tr>
        </thead>
        <tbody>
        <%while(rs.next()){ %>
          <tr data-expanded="true">
            <td><%=qno %></td>
            <td><%=rs.getString(1) %></td>
            <td>
            	<input type="radio" id="q<%=qno %>" name="q<%=qno %>" value="ha" required="required">
				<label for="ha">Highly Agree</label>
				<input type="radio" id="q<%=qno %>" name="q<%=qno %>" value="a" required="required">
				<label for="a">Agree</label>
				<input type="radio" id="q<%=qno %>" name="q<%=qno %>" value="d" required="required">
				<label for="d">Disagree</label>
				<input type="radio" id="q<%=qno %>" name="q<%=qno %>" value="hd" required="required">
				<label for="hd">Highly Disagree</label>
            </td>
            <%qno++; %>
          </tr>
          <%} %>
        </tbody>
      </table>
      <div style="text-align:center;">
      	<button type="submit" class="btn btn-info" style="width: 10%"><h3><b>Submit</b></h3></button>
      </div>
      </form>
    </div>
  </div>
</div>
</section>
</body>
</html>