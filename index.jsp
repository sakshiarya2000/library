<%@page import="dao.BookDao"%>
<%@page  session="true" %>
<html>
<head><title>Table Application</title></head>
<body style="background-image: url(image/lib2.jpg); background-repeat: no-repeat;background-size: cover">
<center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <font size="700"><b>Book Login Section</b></font>
<br><br>
<form method=post action=index.jsp>
<table style="border:1px solid black; width: 300px; height: 150px" >
<tr>
<th>User Name</th>
<td><input type=text name=txtName placeholder="Enter User Name"></td>
</tr>
<tr>
<th>Password</th>
<td><input type=password name=txtPassword placeholder="Enter  Password" ></td>
</tr>    
<tr>
<td></td>
<td>
<input type=submit value=Submit>
<input type=reset value=Reset>
</td>
</tr>
</table>
</form>

<% 
    String user=null,pass=null
;
    user=request.getParameter("txtName");
    pass=request.getParameter("txtPassword");
    if(user!=null && pass!=null)
    {
         BookDao bd=new BookDao();
         if(bd.checkLogin(user, pass))
         {
             response.sendRedirect("HomePage.jsp");
             session.setAttribute("user", user);
             session.setAttribute("pass", pass);
         }  
         else
             out.println("<font color=red size=4>invalid user name or password</font>");
                 
         
                 
    }    
%>

</center>
</body>