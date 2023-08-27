package com.ytzl.servlet;

import com.alibaba.fastjson.JSON;
import com.ytzl.entity.Book;
import com.ytzl.service.BookService;
import com.ytzl.service.impl.BookServiceImpl;
import com.ytzl.util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "BookServlet", value = "/BookServlet")
public class BookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookService bookService = new BookServiceImpl();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String type = request.getParameter("type");
        String value = request.getParameter("value");


        System.out.println("type:"+type);
        System.out.println("value:"+value);

        String pageIndex = request.getParameter("pageIndex");
        if(pageIndex==null){
            pageIndex="1";
        }

        Page<Book> books = bookService.byTypeOrValue(type,value,Integer.parseInt(pageIndex),5);

        //转换
        String jsonString = JSON.toJSONString(books,true);

        //输出
        PrintWriter writer = response.getWriter();
        writer.print(jsonString);
        writer.flush();
        writer.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
