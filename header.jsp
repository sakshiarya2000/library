<% 
   if(session.isNew())
       response.sendRedirect("index.jsp");
%>
<html>
<head><title>Table Application</title></head>
<body style="background-image: url(image/images.jpg); background-repeat: no-repeat;background-size: cover"><br><br><br><br><br>
    <font size="500"><h1><center> WELCOME IN LIBRARY<center></h1></font><br><br>
    <a href="HomePage.jsp"><h1>Home Page</h1> </a><br><br> 
        <a href="InsertBook.jsp"><h1>Insert Books</h1></a><br><br> 
       <a href="SearchStudent.jsp"><h1> SEarch Book </h1></a><br><br> 
       <a href="SearchAll.jsp"><h1> search All</h1></a><br><br> 
       <a href="DeleteBook.jsp"><h1> Delete Book </h1></a><br><br> 
           <a href="UpdateBook.jsp"><h1> Update Book </h1></a><br><br> 
           
    
    
    </body>
    </html>