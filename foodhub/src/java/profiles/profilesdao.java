package profiles;

import java.util.List;

public interface profilesdao {
public abstract void insert(profiles p);
public abstract void update(profiles p);
public abstract void delete(int pid);
public abstract profiles getProfiles(int pid);
public abstract List<profiles> getProfiles();
}
