package users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class usersimpdao implements usersdao{

    @Override
    public void insert(users s) {
try
{
        Connection con=connection.databaseconnection.getConnection();
        String q="insert into users (first_name,last_name,username,password,email,contact_no) values (?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(q);
        ps.setString(1, s.getFirst_name());
        ps.setString(2, s.getLast_name());
        ps.setString(3, s.getUsername());
        ps.setString(4,s.getPassword());
      //  ps.setString(5,s.getConfirm_password());
        ps.setString(5, s.getEmail());
        ps.setString(6,s.getContact_no());
        ps.execute();
        
}
catch(Exception e)
{
e.printStackTrace();
}

    }

    @Override
    public void update(users s) {
                     
        try
        {
            Connection con=connection.databaseconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("update users set first_name=?,last_name=?,username=?,password=?,email=?,contact_no=? where id="+s.getId());
            ps.setString(1, s.getFirst_name());
            ps.setString(2, s.getLast_name());
            ps.setString(3, s.getUsername());
            ps.setString(4,s.getPassword());
            ps.setString(5,s.getEmail());
            ps.setString(6,s.getContact_no());
             ps.executeUpdate();
        
        }
        catch (Exception e)
        {
            e.printStackTrace();
          }

        }

    @Override
    public void delete(int uid) {
        try
    {
        Connection con=connection.databaseconnection.getConnection();
        String Query="delete from users where id=?";
        PreparedStatement ps=con.prepareStatement(Query);
        ps.setInt(1, uid);
         ps.executeUpdate();
    
        
        
    }
    catch (Exception e)
            {
                e.printStackTrace();
            }
        
  


    }

    @Override
    public users getUsers(int uid) {
                users u;
        
                     u=new users();

                
                try
        {
            Connection con=connection.databaseconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from users where id=?");
            ps.setInt(1, uid);
            
          

            ResultSet rs=ps.executeQuery();
        
            while(rs.next())
            {
        
            u.setId(rs.getInt("id"));
            u.setFirst_name(rs.getString("First_name"));
            u.setLast_name(rs.getString("last_name"));
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
            u.setEmail(rs.getString("email"));
            u.setContact_no(rs.getString("contact_no"));
            }
           
        }
        
        catch (Exception e)
        {
            e.printStackTrace();
        }
         return u;
  
    }

    @Override
    public List<users> getUsers() {
    try{
        List<users> list =new ArrayList();
        Connection con=connection.databaseconnection.getConnection();
        String q="Select * from users";
        PreparedStatement ps=con.prepareStatement(q);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            users u=new users();
            u.setId(rs.getInt("id"));
            u.setFirst_name(rs.getString("first_name"));
            u.setLast_name(rs.getString("last_name"));
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
            u.setEmail(rs.getString("email"));
            u.setContact_no(rs.getString("contact_no"));
            list.add(u);
            
            
        }
return list;
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }
    return null;
    }

    @Override
    public boolean validate(String username, String password) {
    boolean status=false;
    
    try
    {
    Connection con=connection.databaseconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("select * from users where email=? and password=?");
    ps.setString(1, username);
    ps.setString(2, password);
    ResultSet rs=ps.executeQuery();
    return rs.next();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
        return false;
    
    }

    
    
    
    }
    

