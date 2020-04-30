<%@page import="model.Book"%>
<%@page import="dao.BookDao"%>
<%@include  file="header.jsp"%>
<%! 
 Book S=null;
%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <% 
            int i;
            for(i=1;i<=2;i++)
                out.println("<br>");
        %>  
    
     <center>
         <form method="post" action="UpdateBook.jsp">
             <b><h1>Update By Roll No</h1></b>
         <table style="border:'1'; background-color: background">
             <tr>
                 <td></td>
                 <td><input type="text" name="txtBid" placeholder="Book Id for Update"></td>                 
                 <td> <input type="submit" value="Submit"></td>
             </tr>   
            </form>
             <% 
           String sbid;
           int bid;
           sbid=request.getParameter("txtBid");
           if(sbid!=null)
           {
                 bid=Integer.parseInt(sbid);
                BookDao bd=new BookDao();
                 S=bd.searchById(bid);
                 if(S==null)
                   out.println("<font color=red size=6>Record not found........</font>");
                else
               {
               %>
               <table border="1" >  
              <tr bgcolor="yellow"><th>Book Id</th><th>Name</th><th>author Name</th><th>Type</th><th>price</th></tr>     
               <tr>
                <form method="post" action="UpdateData.jsp">   
                    <td><input readonly="true" type="text" name="txtBid" value=<%=S.getBid()%>></td>  
                   <td><input type="text" name="txtName" value=<%=S.getName()%>></td>  
                   <td><input type="text" name="txtAnamephy" value=<%=S.getAuthorname()%>></td>  
                   <td><input type="text" name="txtType" value=<%=S.getType()%>></td>  
                   <td><input type="text" name="txtPrice" value=<%=S.getPrice()%>></td>  
                   <td> <input type="submit" value="Update"></td>
                </form>  
                </tr>    
               </table>    
            <%   
               }     
           }
   %>      
             
             
             
         </table>    
             
     </center>    
    </body>
</html>
