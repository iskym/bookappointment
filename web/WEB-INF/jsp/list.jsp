<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/1 0001
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>图书列表</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>图书列表</h2>
        </div>
        <form name="firstForm" action="<%= request.getContextPath()%>/books/search" method="post">
        	<div class="panel-heading ">
        	    <table class="table table-bookName">
        	       <thead>
        	       		<tr>
        					<th width="90" align="lift">图书名称：</th>
        					<th width="150" align="lift">
        						<input type="text" name="name" class="allInput" value="${name}" placeholder="输入检索书名^o^" />
        					</th>
        					<th>
        						<input type="submit" id="tabSub" value="检索" />
        					</th>
                            <th>
                                <button type="button" class="btn btn-info" id="addBook" style="float: right;">添加图书</button>
                            </th>
        				</tr>
        	       </thead>
        	    </table>
         	</div>
        </form>


        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>图书ID</th>
                    <th>图书名称</th>
                    <th>馆藏数量</th>
                    <th>详细</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="sk">
                    <tr>
                        <td>${sk.bookId}</td>
                        <td>${sk.name}</td>
                        <td>${sk.number}</td>
                        <td><a class="btn btn-info" href="/books/${sk.bookId}/detail" >详细</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>


    </div>
</div>



<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="/resources/script/bookappointment.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        bookappointment.list.init();
    })
</script>
</body>
</html>

