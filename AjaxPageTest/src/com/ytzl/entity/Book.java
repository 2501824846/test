package com.ytzl.entity;

import java.math.BigDecimal;

public class Book {
    private int id;
    private String name;
    private String author;
    private String publisher;
    private int pageCount;
    private BigDecimal price;

    public Book() {
    }
    public Book(String name, String author, String publisher, int pageCount, BigDecimal price) {
        this.name = name;
        this.author = author;
        this.publisher = publisher;
        this.pageCount = pageCount;
        this.price = price;
    }
    public Book(int id, String name, String author, String publisher, int pageCount, BigDecimal price) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.publisher = publisher;
        this.pageCount = pageCount;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", publisher='" + publisher + '\'' +
                ", pageCount=" + pageCount +
                ", price=" + price +
                '}';
    }
}
