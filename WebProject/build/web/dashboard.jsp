<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");     
    //String email = request.getParameter("email");
    //String EnrollNumber = request.getParameter("EnrollmentNumbert");
    //String Password = request.getParameter("Password");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webproject?autoReconnect=true&useSSL=false", "root", "");
    Statement st = con.createStatement();
   int i = st.executeUpdate("insert into it values ('" + name + "')");
   if (i>0) {
          response.sendRedirect("index.jsp");
        out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
    
%>
