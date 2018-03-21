package profiles;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class profilesimpdao implements profilesdao{

    @Override
    public void insert(profiles p) {
        try
        {
           Connection con=connection.databaseconnection.getConnection();
            String query="insert into profiles(username,description) values (?,?)";
            PreparedStatement ps=con.prepareStatement(query);
           
            ps.setString(1,p.getUsername());
            ps.setString(2,p.getDescription());
            
            ps.execute();
            
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    }

    @Override
    public void update(profiles p) {
         
        try
        {
            Connection con=connection.databaseconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("update profiles set username=?,description=? where id=?");
            ps.setString(1, p.getUsername());
            ps.setString(2, p.getDescription());
            ps.setInt(3,p.getId());
            
            ps.executeUpdate();
        
        }
        catch (Exception e)
        {
            e.printStackTrace();
          }
        
    }

    @Override
    public void delete(int pid) {
    try
    {
        Connection con=connection.databaseconnection.getConnection();
        String Query="delete from profiles where id=?";
        PreparedStatement ps=con.prepareStatement(Query);
        ps.setInt(1,pid);
        ps.executeUpdate();
    
        
        
    }
    catch (Exception e)
            {
                e.printStackTrace();
            }
        
        
    }

    @Override
    public profiles getProfiles(int pid) {
        profiles p=null ;
        try
        {
            Connection con=connection.databaseconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from profiles where id=?");
            ps.setInt(1, pid);
            
          
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
        
            p=new profiles();
            p.setId(rs.getInt("id"));
            p.setUsername(rs.getString("username"));
            p.setDescription(rs.getString("description")); 
            }
           
        }
        
        catch (Exception e)
        {
            e.printStackTrace();
        }
         return p;
    }

    @Override
    public List<profiles> getProfiles() {
        
        List<profiles> l = new ArrayList();
        
        try 
        {

          Connection con= connection.databaseconnection.getConnection();
          String Query = "Select * from profiles";
          PreparedStatement st = con.prepareStatement(Query);


          ResultSet rs = st.executeQuery();
        
              
          while( rs.next() )
          {
              profiles p = new profiles();
              
              p.setId(rs.getInt("id"));
              p.setUsername(rs.getString("username"));
              p.setDescription(rs.getString("description"));
              l.add(p);
          }
           return l;        
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return null;
    }
    


}
