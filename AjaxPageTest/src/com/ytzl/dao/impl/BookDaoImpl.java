package com.ytzl.dao.impl;

import com.ytzl.dao.BookDao;
import com.ytzl.entity.Book;
import com.ytzl.util.BaseDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @BelongsProject: Books
 * @BelongsPackage: com.ytzl.dao.impl
 * @Author: hua hua
 * @CreateTime: 2023-03-13  16:27
 * @Description:
 * @Version: 1.0
 */
public class BookDaoImpl extends BaseDao implements BookDao {

    public Book getBook(ResultSet rs){
        Book book = null;
        try {
            book = new Book(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getInt(5),
                    rs.getBigDecimal(6)
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return book;
    }

    @Override
    public List<Book> pageByTypeOrValue(String type, String value, int pageIndex, int pageSize) {
        ArrayList<Book> books = new ArrayList<>();
        String sql = "select * from books where 1 = 1";
        List<Object> list = new ArrayList<Object>();
        if (type != null && !"".equals(type)) {
            sql += " and "+type+" like ?";
            list.add("%" + value + "%");
        }
        if (pageIndex > 0 && pageSize > 0) {
            //第5页,每页8条  limit (5-1)*8,8;
            sql += " limit " + (pageIndex - 1) * pageSize + "," + pageSize;
        }
        ResultSet rs = myQuery(sql, list.toArray());
        try {
            while (rs.next()){
                books.add(getBook(rs));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return books;
    }

    @Override
    public int getTotalCount(String type, String value) {
        int i = 0;
        String sql = "select count(*) from books where 1 = 1";
        List<Object> list = new ArrayList<Object>();
        if (type != null && value.length() > 0) {
            sql += " and "+type+" like ?";
            list.add("%" + value + "%");
        }
        ResultSet rs = myQuery(sql, list.toArray());
        try {
            while (rs.next()) {
                i = rs.getInt(1);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return i;
    }

    @Override
    public int addBook(Book book) {
        String sql = "insert into books (name,author,publisher,pageCount,price) values(?,?,?,?,?)";
        Object[] params = {
                book.getName(),
                book.getAuthor(),
                book.getPublisher(),
                book.getPageCount(),
                book.getPrice()
        };
        return myUpdate(sql,params);
    }

    @Override
    public int updBookById(Book book) {
        String sql = "update books set name = ?,author=?,publisher=?,pageCount=?,price = ? where id = ?";
        Object[] params = {
                book.getName(),
                book.getAuthor(),
                book.getPublisher(),
                book.getPageCount(),
                book.getPrice(),
                book.getId()
        };
        return myUpdate(sql,params);
    }

    @Override
    public Book queryBookById(int id) {
        Book book = null;
        String sql = "select * from books where id = ?";
        Object[] params = {id};
        ResultSet rs = myQuery(sql, params);
        try {
            while (rs.next()){
                book = getBook(rs);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return book;
    }

    @Override
    public int delManyById(String[] ids) {
        StringBuilder sb = new StringBuilder();
        for (String id : ids) {
            sb.append(id).append(",");
        }
        String sql = "delete from books where id in("+sb.substring(0,sb.length()-1)+")";
        return myUpdate(sql,null);
    }

    @Override
    public int delOneById(int id) {
        String sql = "delete from books where id = ?";
        Object[] params = {id};
        return myUpdate(sql, params);
    }
}
