package category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class categoryimpdao implements categorydao{

    @Override
    public void insert(category c)
    {
        try
        {
        Connection con=connection.databaseconnection.getConnection();
        String q="insert into category(username,description,price,category,image) values(?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(q);
        ps.setString(1,c.getUsername());
        ps.setString(2,c.getDescription());
        ps.setInt(3,c.getPrice());
        ps.setString(4,c.getCategory());
        ps.setString(5, c.getImage());
        
        ps.execute();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    }

    @Override
    public void update(category c) {
             
        try
        {
            Connection con=connection.databaseconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("update category set username=?,description=?,price=?,category=? where id=?");
            ps.setString(1, c.getUsername());
            ps.setString(2, c.getDescription());
            ps.setInt(3,c.getPrice());
            ps.setString(4, c.getCategory());
            ps.setInt(5, c.getId());
            
            ps.executeUpdate();
        
        }
        catch (SQLException e)
        {
          }
        
    
    }

    @Override
    public void delete(int cid) {
        try
    {
        Connection con=connection.databaseconnection.getConnection();
        String Query="delete from category where id=?";
        PreparedStatement ps=con.prepareStatement(Query);
        ps.setInt(1, cid);
         ps.executeUpdate();
    
        
        
    }
    catch (SQLException e)
            {
            }
        
  
    }

    @Override
    public category getCategory(int cid) {
            category c=null ;
        try
        {
            Connection con=connection.databaseconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from category where id=?");
            ps.setInt(1, cid);
            
          
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
        
            c=new category();
            c.setId(rs.getInt("id"));
            c.setUsername(rs.getString("username"));
            c.setDescription(rs.getString("description")); 
            c.setPrice(rs.getInt("price"));
            c.setCategory(rs.getString("category"));
            c.setImage(rs.getString("image"));
            }
           
        }
        
        catch (SQLException e)
        {
        }
         return c;
  
    }

    @Override
    public List<category> getCategory() {
         
        List<category> l = new ArrayList();
        
        try 
        {

          Connection con= connection.databaseconnection.getConnection();
          String Query = "Select * from category";
          PreparedStatement st = con.prepareStatement(Query);


            ResultSet rs = st.executeQuery();
        
              
          while( rs.next() )
          {
              category c = new category();
              
              c.setId(rs.getInt("id"));
              c.setUsername(rs.getString("username"));
              c.setDescription(rs.getString("description"));
              c.setPrice(rs.getInt("price"));
              c.setCategory(rs.getString("category"));
              c.setImage(rs.getString("image"));
              l.add(c);
          }
           return l;        
        }
        catch(SQLException e){
        }
        
        return null;
    }
    
}
