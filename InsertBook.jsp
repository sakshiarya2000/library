<%@page import="dao.BookDao"%>
<%@include  file="header.jsp"%>
<%! 
  int bid;
%>


<html>
    <head>
        <title>TODO supply a title</title>
    </head>
    <body>
        <% 
            int i;
            for(i=1;i<=6;i++)
                out.println("<br>");
        %>  

        
     <center>
         <form method="post" action="InsertData.jsp">
         <table style="border:'1' ; width:600px;height:200">
             <tr>
                 <th><h2>Roll No</h2></th>
                      <% 
                        BookDao bd=new BookDao();
                        
                        bid=bd.autoIncr();
                      %>     
                 <td><input type="text" name="txtbid" value=<%=bid%>></td>    
       
             </tr>   
              <tr>
              <th><h2>Name</h2></th>
              <td><input type="text" name="txtName"></td>                 
             </tr>   
             <tr>
                 <th><h2>Author Name</h2></th>
                 <td><input type="text" name="txtAname"></td>                 
             </tr>   
              <tr>
              <th><h2>Type</h2></th>
              <td><input type="text" name="txtType"></td>                 
             </tr>   
             <tr>
              <th><h2>price</h2></th>
              <td><input type="text" name="txtPrice"></td>                 
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
     </center>    
    </body>
</html>
