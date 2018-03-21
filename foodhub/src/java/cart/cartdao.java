package cart;

import java.util.List;

public interface cartdao {

    public abstract void insert(cart c);
    public abstract void update(cart c);
    public abstract void delete(int id);
    public abstract void updateaddress(int id,String address);
    public abstract void delete(cart c);
    
    public abstract cart getCart(int cart_id);
 public abstract List<cart> getCart();
 
 
}
