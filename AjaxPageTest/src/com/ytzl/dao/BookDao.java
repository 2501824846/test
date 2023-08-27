package com.ytzl.dao;

import com.ytzl.entity.Book;
import java.util.List;

/**
 * @BelongsProject: Books
 * @BelongsPackage: com.ytzl.dao
 * @Author: hua hua
 * @CreateTime: 2023-03-13  16:19
 * @Description:
 * @Version: 1.0
 */
public interface BookDao {
    List<Book> pageByTypeOrValue(String type, String value, int pageIndex, int pageSize);

    int getTotalCount(String type, String value);

    int addBook(Book book);

    int updBookById(Book book);

    Book queryBookById(int id);

    int delManyById(String[] ids);

    int delOneById(int id);
}
