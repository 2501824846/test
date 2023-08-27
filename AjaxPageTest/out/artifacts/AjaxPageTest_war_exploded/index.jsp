<%--
  Created by IntelliJ IDEA.
  User: hua
  Date: 2023/6/5
  Time: 下午 08:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/books.js"></script>
<body>
<div align="center">
<%--    图书查询--%>
    <div><h1>图书查询</h1></div>
    <div>
        <select name="type" id="type">
            <option value="name">书名</option>
            <option value="author" selected>作者</option>
            <option value="publisher">出版社</option>
        </select>
        <input type="text" name="value" id="value">
        <input type="submit" value="查询" id="searchButton">
    </div>
<%--    添加--%>
    <div>
        <h3><a href="addBook.jsp">发布图书</a></h3>
    </div>
<%--    table显示数据--%>
    <div>
        <table>
            <thead>
            <tr id="tr_one">
                <th>编号</th>
                <th>书名</th>
                <th>作者</th>
                <th>总页数</th>
                <th>出版社</th>
                <th>价格</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
<%--        假设没有书籍,友好提示--%>
        <h1 id="not_books"></h1>
    </div>
<%--    分页模块--%>
    <div>
      <span>
       共<span class="totalCount"></span>条记录&nbsp;&nbsp;<span class="pageIndex"></span>
          /<span class="pageCount"></span>页<span class="pageSize"></span>条
    </span>
        <span>
          <a id="shou" href=" ">首页</a>
          <a id="up" href="javascript:up()">上一页</a>
          <a id="dwon" href="javascript:down()">下一页</a>
          <a id="over" href="javascript:last()">末页</a>
      </span>

        <span class="page-go-form"><label>跳转至</label>
      <input type="text" name="inputPage" id="inputPage" class="page-key"/>页
      <button type="button" class="page-btn" name="1">GO</button>
</span>

    </div>
</div>
</body>
</html>
