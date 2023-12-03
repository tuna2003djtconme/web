package DAO;

import java.util.Collection;

public interface IDAO<T> {
    public int insert(T t);

    public int insertAll(Collection<T> collectionT);

    public int update(T t);

    public T selectById(T t);
    public Collection<T> SelectAll();
    
    public int deleteById(T t);
}
