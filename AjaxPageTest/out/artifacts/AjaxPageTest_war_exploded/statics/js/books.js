console.log("加载books.js")

$(document).on("click","#searchButton",function (){
   //获取select的type 以及input框的value
   let type = $("[name='type']").val();//1,2,3
   let value = $("[name='value']").val();//用户输入
   let date = "type="+type+"&value="+value;
       query(date);
});
query("");
function down() {
    //获取当前页码
    let pageIndex = $(".pageIndex").text();
    //获取总页数
    //判断是否大于总页数
    //if(){}
    if (pageIndex<page.totalCount){
        let data = "pageIndex=" + parseInt(++pageIndex);
        query(data)
    }else{
        alert("已经是最后一页了!");
        return false;
    }

}
function up() {
    //获取当前页码
    let pageIndex = $(".pageIndex").text();
    //获取总页数
    //判断是否大于总页数
    //if(){}
    if (pageIndex>0){
        let data = "pageIndex=" + parseInt(--pageIndex);
        query(data)
    }else{
        alert("已经是第一页了!");
        return false;
    }
}

let page;//分页对象
function setPage(){
       $(".totalCount").html(page.totalCount);
       $(".pageIndex").html(page.pageIndex);
       $(".pageCount").html(page.pageCount);
       $(".pageSize").html(page.pageSize);
       $("#inputPage").val(page.pageIndex);
}
function query(data) {
    console.log("查询条件:", data);
    $.ajax({
        url: "/BookServlet",
        type: "get",
        data: data,
        dataType: "json",
        success: function (jsonData) {
            console.log("后台响应的数据", jsonData);
            //先把上一次的结果清掉
            $("tbody").empty();
            page = jsonData;
            //设置分页数据
            setPage();
            let tableList = jsonData.list;
            console.log("查询的书籍数量", tableList.length);
            if (tableList.length === 0) {
                $("#not_books").html("暂时没有书籍!")
            } else {
                $("#not_books").html("")
            }
            for (let i = 0; i < tableList.length; i++) {
                let book =  tableList[i];
                $("tbody").append(
                    "  <tr>\n" +
                    "                <td>"+book.id+"</td>\n" +
                    "                <td>"+book.name+"</td>\n" +
                    "                <td>"+book.author+"</td>\n" +
                    "                <td>"+book.pageCount+"</td>\n" +
                    "                <td>"+book.publisher+"</td>\n" +
                    "                <td>"+book.price+"</td>\n" +
                    "            </tr>"
                );
            }
        },
        error: function () {
            console.log("服务器错误咯!")
        }
    });
}