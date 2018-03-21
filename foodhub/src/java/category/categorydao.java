/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package category;

import java.util.List;

public interface categorydao {
    public abstract void insert(category c);
public abstract void update(category c);
public abstract void delete(int cid);
public abstract category getCategory(int cid);
public abstract List<category> getCategory();

    
}
