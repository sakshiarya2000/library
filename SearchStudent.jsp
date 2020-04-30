<%@page import="model.Book"%>
<%@page import="dao.BookDao"%>
<%@include  file="header.jsp"%>
<%! 
 Book S=null;
%>
<html>
    <head>
        <title>TODO supply a title</title>
    </head>
    <body>
    <% 
            int i;
            for(i=1;i<=0;i++)
                out.println("<br>");
        %>  
   
     <center>
         <form method="post" action="SearchStudent.jsp">
             <h1><b>Search By Book id</b></h1>
         <table style=" border:'1'; width: 200px; height: 100px">
             <tr>
                 <td></td>
                 <td><input type="text" name="txtBid" placeholder="Book Id for Search"></td>                 
             </tr>   
             <tr>
                 <td></td>
              <td>
                  <input type="submit" value="Submit">
                  <input type="reset" value="Reset">
              </td>   
             </tr>
         </table>    
             </form>
   <% 
           String sbid;
           int bid;
           sbid=request.getParameter("txtBid");
           if(sbid!=null)
           {
                 bid=Integer.parseInt(sbid);
                 BookDao sd=new BookDao();
                 S=sd.searchById(bid);
                 if(S==null)
                   out.println("<font color=red size=6>Record not found........</font>");
                else
               {
               %>
               <table border="1" >  
              <tr bgcolor="yellow"><th>Roll No</th><th>Name</th><th>Physics</th><th>Chemistry</th><th>Maths</th></tr>     
               <tr>
                   <td><%=S.getBid()%></td>  
                   <td><%=S.getName()%></td>  
                   <td><%=S.getAuthorname()%></td>  
                   <td><%=S.getType()%></td>  
                   <td><%=S.getPrice()%></td>  
               </tr>    
               </table>    
            <%   
               }     
           }
   %>      
     </center>    
    </body>
</html>
