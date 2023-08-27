package com.ytzl.util;

import java.util.List;

/**
 * @BelongsProject: PageLimit
 * @BelongsPackage: com.ytzl.utils
 * @Author: hua hua
 * @CreateTime: 2023-04-03  19:55
 * @Description: 分页工具类
 * @Version: 1.0
 */
public class Page<T> {
    /**
     * 当前页码
     */
    private int pageIndex;
    /**
     * 每页显示的条数
     */
    private int pageSize;
    /**
     * 总条数
     */
    private int totalCount;
    /**
     * 总页数(根据总条数和每页条数计算)
     */
    private int pageCount;
    /**
     * 页面的数据
     */
    private List<T> list;

    public Page() {
    }

    public Page(int pageIndex, int pageSize, int totalCount, int pageCount, List<T> list) {
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.pageCount = pageCount;
        this.list = list;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Page{" +
                "pageIndex=" + pageIndex +
                ", pageSize=" + pageSize +
                ", totalCount=" + totalCount +
                ", pageCount=" + pageCount +
                ", list=" + list +
                '}';
    }
}
