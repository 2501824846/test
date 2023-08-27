package com.ytzl.service;

import com.ytzl.entity.Book;
import com.ytzl.util.Page;

import java.util.ArrayList;

/**
 * @BelongsProject: Books
 * @BelongsPackage: com.ytzl.service
 * @Author: hua hua
 * @CreateTime: 2023-03-20  14:21
 * @Description:
 * @Version: 1.0
 */
public interface BookService {
    Page<Book> byTypeOrValue(String type, String value,int pageIndex, int pageSize);

    int addBook(Book book);

    int updBook(Book book);

    Book byBookId(int id);

    int delBook(String[] ids);

    int delOne(int id);
}
