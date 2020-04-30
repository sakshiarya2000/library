
<%@page import="dao.BookDao"%>
<%@include  file="header.jsp"%>
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
            int i;
            for(i=1;i<=14;i++)
                out.println("<br>");
            
            BookDao bd=new BookDao();
            if(bd.updateBook(S))
              out.println("<font color=green size=7>Record Updated......</font>");
        %>  
    </body>
</html>
