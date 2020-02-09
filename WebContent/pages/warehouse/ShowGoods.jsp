<%@page import="com.ttjsyxt.dao.GoodsDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ttjsyxt.entity.goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>库存显示</title>
<style type="text/css">
body {
	background-image: url(../../images/bgcolor.png);
}

#top {
	width: 98%;
	position: relative;
	left: 2%;
	font: 50px '华文行楷';
	color: #5B5B5B;
}

#top_right {
	margin-right: 2%;
	float: right;
}

#set {
	width: 150px;
	position: fixed;
	margin-top: 2%;
	margin-left: 85%;
}

#select {
	margin-right: 5%;
}

#deerl {
	width: 400px;
	position: fixed;
	top: 65%;
}

#deerr {
	width: 250px;
	position: fixed;
	top: 65%;
	left: 82%;
}
</style>
</head>
<body>
	<div id="top">
		<img src="../../images/base.png" style="height: 62px; width: 64px;">天天见收银系统
		<div align="right" id="top_right">
			<font size="4" face="华文行楷" color="#FF8000">你好：</font>&nbsp;&nbsp;&nbsp;
			<img src="../../images/exit_logo.png"
				style="height: 25px; width: 27px;">
			<!-- 退出图标 -->
			<a href="/ttjsyxt/servlet/AdminLogoutServlet"><font
				size="4" face="华文行楷" color="#5B5B5B">退出</font></a>
		</div>
	</div>
	<div align="center" style="margin-top:2%;">
		<table border="1" width="1100px;">
			<tr align="center" height="40px;">
				<td>货物名称</td>
				<td>条码号</td>
				<td>品牌</td>
				<td>生产公司</td>
				<td>零售价(元)</td>
				<td>价格(元)</td>
				<td>库存</td>
			</tr>
			<%
				GoodsDao goodsDao = new GoodsDao();
				List<goods> list = goodsDao.readList();
				for (goods goods : list) {
			%>
			<tr align="center" height="40px;">
				<td><%=goods.getGoodsName()%></td>
				<td><a href=" /ttjsyxt/servlet/seachBarcode?barcode=<%=goods.getBarcode() %> "><%=goods.getBarcode() %></a></td>
				<td><%=goods.getBrand()%></td>
				<td><%=goods.getSupplier()%></td>
				<td><%=goods.getSellprice() %></td>
				<td><%=goods.getPrice()%></td>
				<td><%=goods.getNumber()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>


</html>