
package connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class MyCon 
{
    static Connection con=null;
   static
   {try {
           Class.forName("com.mysql.jdbc.Driver");
       System.out.println("driver loaded.......");
       } 
   catch (ClassNotFoundException e)
   {
       
               System.out.println(e);
   }}
   public static Connection getConnection()
{
    try {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3309/lib","root","root");
        System.out.println("connected.......");
    } catch (SQLException e) {
        System.out.println(e);
    }
    return con;
   
       
    
            
}
   public static Connection UserConnection()
{
    try {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3309/login","root","root");
        System.out.println("connected.......");
    } catch (SQLException e) {
        System.out.println(e);
    }
    return con;
}
}

