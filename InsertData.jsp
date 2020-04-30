
<%@page import="dao.BookDao" %>
<jsp:useBean class="model.Book" id="S">
    <jsp:setProperty property="*" name="S"></jsp:setProperty>  
</jsp:useBean>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
       BookDao bd=new BookDao();
         if(bd.insertInfo(S)>0)
             out.println("Record Inserted........");
    %>
    </body>
</html>
