package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
@WebListener
public class databaseconnection implements ServletContextListener{
    private static Connection con;
    public static Connection getConnection()
        {
        return con;
        }
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("app get started");
        try
        {
           con = DriverManager.getConnection("jdbc:derby://localhost:1527/foodhub","root","root");
           if(con !=null)
           {
               System.out.println("Database Connected");
           }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("apps shut's down");
        try
        {
           con.close();
           if(con ==null)
           {
               System.out.println("Database Diss-Connected");
           }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}
