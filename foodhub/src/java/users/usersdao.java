package users;

import java.util.List;

public interface usersdao {
public abstract void insert (users s);
public abstract void update (users s);
public abstract void delete (int uid);
public abstract users getUsers(int uid);
public abstract List<users> getUsers();
public abstract boolean validate(String email,String password);
}
