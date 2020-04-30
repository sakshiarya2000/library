
<%@page import="java.util.List"%>
<%@page import="model.Book"%>
<%@page import="dao.BookDao"%>
<%@include  file="header.jsp"%>
<%! 
  List<Book> mylist;
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
     <% 
            int i;
            for(i=1;i<=0;i++)
                out.println("<br>");
        BookDao bd=new BookDao();
           mylist=bd.searchAll();
    %>   
     <table style="border-color: black; width: 500px;height: 300px" >  
              <tr bgcolor="yellow"><th><b>Book Id</b></th><th><b>Name</b></th><th>><b>Author Name</b></th><th><b> Type</b></th><th><b>Price</b></th></tr>     

              <% 
                for(Book S:mylist)
                {
               %>
               <tr bgcolor="white">
                   <td><%=S.getBid()%></td>  
                   <td><%=S.getName()%></td>  
                   <td><%=S.getAuthorname()%></td>  
                   <td><%=S.getType()%></td>  
                   <td><%=S.getPrice()%></td>  
               </tr>  
               <%
                } 
              %>              
              
   </table>              
    </center>
    </body>
</html>
