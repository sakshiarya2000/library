
<%@page import="model.Book"%>
<%@page import="dao.BookDao"%>
<%@include  file="header.jsp"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <center>
       <% 
            int i;
            for(i=1;i<=17;i++)
                out.println("<br>");
            String sbid;
            int bid;
              sbid=session.getAttribute("bid").toString();
              bid=Integer.parseInt(sbid);
              //out.println(rno);
              BookDao bd=new BookDao();
                    if(bd.delete(bid))
                        out.println("<font color=green size=7>Record Deleted........</font>");
        %> 
        </center>
    </body>
</html>
