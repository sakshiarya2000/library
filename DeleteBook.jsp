<%@page import="model.Book"%>
<%@page import="dao.BookDao"%>
<%@include  file="header.jsp"%>
<%@page  session="true" %>


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
            for(i=1;i<=2;i++)
                out.println("<br>");
        %>  
   
     <center>
         <form method="post" action="DeleteBook.jsp">
             <b><h1>Enter Book Id for Delete</h1></b>
         <table style="border:1; width: 100px; height: 50px">
             <tr>
                 <td></td>
                 <td><input type="text" name="txtBid" placeholder="Book Id for Delete"></td>                 
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
      String sbid=null;
      int bid;
      sbid=request.getParameter("txtBid");
      if(sbid!=null)
      {
          bid=Integer.parseInt(sbid);
          BookDao sd=new BookDao();
          S=sd.searchById(bid);
          if(S==null)
            out.println("<font color=red size=7>Record Not Found.........</font>");
          else
          {
           %>
          <table style=" border:1;background-color: bisque"> 
         <tr><th>Bok Id</th><th>Name</th><th>Author Name</th><th>Type</th><th>Price</th></tr>     
           <tr>
               <td><%=S.getBid()%></td>    
               <td><%=S.getName()%></td>    
               <td><%=S.getAuthorname()%></td>    
               <td><%=S.getType()%></td>    
               <td><%=S.getPrice()%></td>    
                <td>
                <form method="post" action="DeleteData.jsp">    
                 <input type="submit" value="Delete">   
                </form>    
                </td>    
           </tr>    
          </table>    
        <%  
              session.setAttribute("bid", S.getBid());
         }     
      }
     
       %>     
         
         
     </center>    
    </body>
</html>
