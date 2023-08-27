package com.ytzl.service.impl;

import com.ytzl.dao.BookDao;
import com.ytzl.dao.impl.BookDaoImpl;
import com.ytzl.entity.Book;
import com.ytzl.service.BookService;
import com.ytzl.util.Page;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * @BelongsProject: Books
 * @BelongsPackage: com.ytzl.service.impl
 * @Author: hua hua
 * @CreateTime: 2023-03-20  14:23
 * @Description:
 * @Version: 1.0
 */
public class BookServiceImpl implements BookService {

    public BookDao bookDao = new BookDaoImpl();;

    @Override
    public Page<Book> byTypeOrValue(String type, String value, int pageIndex, int pageSize) {
        //当前页码，每页显示的条数，页面传值，不需要考虑
        //总条数
        int totalCount = bookDao.getTotalCount(type,value);
        //总页数(根据总条数和每页条数计算)
        //总页数 = 总条数%每页条数==0?总条数/每页条数:总条数/每页条数+1
        int pageCount = totalCount % pageSize == 0 ? totalCount / pageSize : totalCount / pageSize + 1;
        //页面的数据
        List<Book> peopleList = bookDao.pageByTypeOrValue(type, value, pageIndex, pageSize);
        return new Page<>(pageIndex, pageSize, totalCount, pageCount, peopleList);
    }

    @Override
    public int addBook(Book book) {
        return bookDao.addBook(book);
    }

    @Override
    public int updBook(Book book) {
        return bookDao.updBookById(book);
    }

    @Override
    public Book byBookId(int id) {
        return bookDao.queryBookById(id);
    }

    @Override
    public int delBook(String[] ids) {
        return bookDao.delManyById(ids);
    }

    @Override
    public int delOne(int id) {
        return bookDao.delOneById(id);
    }

    public static void main(String[] args) {
        //System.out.println(new BookServiceImpl().byTypeOrValue("publisher", "有限责任公司", 1, 5));
        System.out.println(new BookServiceImpl().byTypeOrValue(null, null, 1, 5));
    }

    @Test
    public void test(){
        BookService bookService = new BookServiceImpl();
        Page<Book> bookPage = bookService.byTypeOrValue("publisher", "有限责任公司", 1, 5);
        for (Book book : bookPage.getList()) {
            System.out.println(book);
        }

    }


}
