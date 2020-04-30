package dao;
import connection.MyCon;
import java.sql.Connection;
import model.Book;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;


public class BookDao 
{
    public boolean checkLogin(String user,String pass) throws SQLException
    {
         String sql;
        Connection con=null;
        sql="select * from login where username=? and password=?";
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        ps=con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
          return true;
        
     return false;
    }            
    
    
     public int autoIncr() throws SQLException
    {
        String sql;
        Connection con=null;
        sql="select max(bookid) from book";
        int max=101;
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        ps=con.prepareStatement(sql);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
        {     
            max=rs.getInt(1);
            max=max+1;
        }    
      return max;
    }
    
    
 public int insertInfo(Book b)throws SQLException
   
 {
     String sql;
     Connection con=null;
   
         sql="insert into book value(?,?,?,?,?)";
     PreparedStatement ps=null;
     con=MyCon.getConnection();
     ps=con.prepareStatement(sql);
     ps.setInt(1,b.getBid());
     ps.setString(2,b.getName());
     ps.setInt(3,b.getPrice());
     ps.setString(4,b.getAuthorname());
     ps.setString(5,b.getType());
     int n=0;
     n=ps.executeUpdate();
     return (n);
     }
    
    
     public boolean insertUser(login l)throws SQLException
   
 {
     String sql;
     Connection con=null;
   
         sql="insert into login value(?,?)";
     PreparedStatement ps=null;
     con=MyCon.UserConnection();
     ps=con.prepareStatement(sql);
     ps.setString(1,l.getUser());
     ps.setString(2,l.getPass());
      int n=0;
     n=ps.executeUpdate();
    if (n>0)
           return true;
       
     return false;
     }
    
    
    
    
    
    public Book searchById(int bid) throws SQLException
    {
        Connection con=null;
        String sql;
        ResultSet rs=null;
        PreparedStatement ps=null;
       
           con=MyCon.getConnection();
            sql="select* from book where bookid=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1, bid);
            rs=ps.executeQuery();
            Book b= new Book();
            {
                if(rs.next())
                {
                    b.setBid(rs.getInt(1));
                    b.setName(rs.getString(2));
                    b.setPrice(rs.getInt(3));
                    b.setAuthorname(rs.getString(4));
                    b.setType(rs.getString(5));
                }
                else
                {
                    b=null;
                    
                }
            }
     return b;
        
        }
    
    
    
    
    
    
 public List <Book> searchAll() throws SQLException
  {
          Connection con=null;
  con=MyCon.getConnection();
  ResultSet rs=null;
  String sql;
  PreparedStatement ps=null;
  sql = "select * from book";
  ps=con.prepareStatement(sql);
    
rs=ps.executeQuery();
List <Book> mylist=new ArrayList<Book>();
while (rs.next())
{
Book b=new Book();
b.setBid(rs.getInt(1));
b.setName(rs.getString(2));
b.setPrice(rs.getInt(3));
b.setAuthorname(rs.getString(4));
b.setType(rs.getString(5));

mylist.add(b);
b=null;

}

return mylist;
  
    }    
    
    
    
    
    
     public boolean delete(int bid) throws SQLException
    {
        Connection con=null;
        String sql;
        ResultSet rs=null;
        PreparedStatement ps=null;
       
           con=MyCon.getConnection();
            sql="delet from book where bookid=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1, bid);
            int n = 0;
             n=ps.executeUpdate();
            if (n>0)
           return true;
       
     return false;
    }
    
     public boolean updateBook(Book b)throws SQLException
    {
        String sql;
        Connection con=null;
        sql="update book set name=?,price=?,authorname=?,type=? where bid=?";
        PreparedStatement ps=null;
         con=MyCon.getConnection();
         ps=con.prepareStatement(sql);
         ps.setString(1, b.getName());
         ps.setInt(2, b.getPrice());
         ps.setString(3, b.getAuthorname());
         ps.setString(4, b.getType());
         if(ps.executeUpdate()>0)
             return true;
       return false;  
    }
}
 

