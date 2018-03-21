package cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class cartimpdao implements cartdao {

    @Override
    public void insert(cart c) {
    try
       {
        Connection con=connection.databaseconnection.getConnection();
        String q="insert into cart(product_id,quantity,address,food_item,image,description,price) values(?,?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(q);
        ps.setInt(1,c.getProduct_id());
        ps.setInt(2,c.getQuantity());
        ps.setString(3, (String)c.getAddress());
        ps.setString(4, c.getFood_item());
        ps.setString(5, c.getImage());
        ps.setString(6, c.getDescription());
        ps.setInt(7, c.getPrice());
        ps.execute();
    
        }
    catch(Exception e)
      {
        e.printStackTrace();
      }
    }

    @Override
    public void updateaddress(int id,String address) {
        try
        {
           Connection con=connection.databaseconnection.getConnection();
           PreparedStatement ps=con.prepareStatement("update cart set address=? where id=?");
      ps.setString(1, address);
      ps.setInt(2, id);
            
            
            ps.executeUpdate();

        }
        catch(Exception e)
        {
        e.printStackTrace();}
        }

    @Override
    public void delete(int id) {
         try
         {
        Connection con=connection.databaseconnection.getConnection();
        String Query="delete from cart where id=?";
        PreparedStatement ps=con.prepareStatement(Query);
        ps.setInt(1, id);
         ps.executeUpdate();
         
         }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    }

    @Override
    public cart getCart(int cart_id) {
            cart c=null;
        try
        {
            
            Connection con=connection.databaseconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from cart where id=?");
            ps.setInt(1, cart_id);
            
            ResultSet rs=ps.executeQuery();
            
            
            while(rs.next())
            {
            c=new cart();
            c.setId(rs.getInt("id"));
            c.setProduct_id(rs.getInt("product_id"));
            c.setQuantity(rs.getInt("quantity")); 
            c.setAddress(rs.getString("address"));
            c.setFood_item(rs.getString("food_item"));
            c.setImage(rs.getString("image"));
            c.setDescription(rs.getString("description"));
            c.setPrice(rs.getInt("price"));
           
            }
            System.out.println("thek se dekh yr tu "+c);
           }
        
        catch (SQLException e)
        {
            e.printStackTrace();
        }
     return c;        
    }

    @Override
    public List<cart> getCart() {
            List<cart> l = new ArrayList();
         try 
        {
          Connection con= connection.databaseconnection.getConnection();
          String Query = "Select * from cart";
          PreparedStatement st = con.prepareStatement(Query);
         ResultSet rs = st.executeQuery();
        
              
         
          while( rs.next() )
          {
           cart c=new cart();    
              c.setId(rs.getInt("id"));
              c.setProduct_id(rs.getInt("product_id"));
              c.setQuantity(rs.getInt("quantity"));
              c.setAddress(rs.getString("address"));
              c.setFood_item(rs.getString("food_item"));
              c.setImage(rs.getString("image"));
              c.setDescription(rs.getString("description"));
              c.setPrice(rs.getInt("price"));
       
              System.out.println( c.getId() );
              
              l.add(c);
           }
           return l;        
        }
        catch(SQLException e){
        }
        
        
        return l;
    }

    public void delete(cart c) {
    try
    {
        Connection con=connection.databaseconnection.getConnection();
        String query="delete from cart";
        PreparedStatement ps=con.prepareStatement(query);
        ps.executeUpdate();
    }
    
    catch(Exception e)
    {
    e.printStackTrace();
    }
    }


    @Override
    public void update(cart c) {

        try
        {
           Connection con=connection.databaseconnection.getConnection();
           PreparedStatement ps=con.prepareStatement("update cart set product_id=?,quantity=?,address=? ,food_item=?,image=?,description=?,price=? where id=?");
            ps.setInt(1, c.getProduct_id());
            ps.setInt(2, c.getQuantity());
            ps.setString(3,c.getAddress());
            ps.setString(4, c.getFood_item());
            ps.setString(5, c.getImage());
            ps.setString(6, c.getDescription());
            ps.setInt(7, c.getPrice());

            
            
            ps.setInt(8, c.getId());
            
            ps.executeUpdate();

        }
        catch(Exception e)
        {
        e.printStackTrace();}
        }

    }

 
    

