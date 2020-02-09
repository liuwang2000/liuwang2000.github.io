<%@page import="com.ttjsyxt.entity.goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>条形码</title>
<script type="text/javascript">
function add(){
	var form=document.getElementById("myform");
	form.action="/ttjsyxt/servlet/wareHousing";
	form.submit();
}
function search(){
	var form=document.getElementById("myform");
	form.action="/ttjsyxt/servlet/seachBarcode";
	form.submit();
}
function del(){
	var form=document.getElementById("myform");
	form.action="/ttjsyxt/servlet/Delete";
	form.submit();
}
</script>
<style type="text/css">
   body{
   		background-image:url(../images/bgcolor.png);
   }
   #top{
 		width:98%;
  		position:relative;
  		left:2%;
  		font:50px '华文行楷';
  		color:#5B5B5B;
  	}
  	#top_right{
  		margin-right:2%;
  		float:right;
  	}
  	#set{
  		width:150px;
  		position:fixed;
  		margin-top:2%;
  		margin-left:85%;
  	}
  	#select{
  		margin-right:5%;
  	}
  	#deerl{
  		width:400px;
  		position:fixed;
  		top:65%;
  	}
  	#deerr{
  		width:250px;
  		position:fixed;
  		top:65%;
  		left:82%;
  	}
  	
  </style>
</head>
<body>
<div id="top">
		<img src="../images/base.png" style="height: 62px; width: 64px;">天天见收银系统
		<div align="right" id="top_right">
			<!-- <font size="4" face="华文行楷" color="#FF8000">你好：</font>&nbsp;&nbsp;&nbsp; -->
			<img src="../images/exit_logo.png" style="height: 25px; width: 27px;">
			<!-- 退出图标 -->
			<a href="/ttjsyxt/servlet/AdminLogoutServlet"><font
				size="4" face="华文行楷" color="#5B5B5B">退出</font></a>
		</div>
		<div align="right" id="top_right">
			<a href="/ttjsyxt/pages/warehouse/ShowGoods.jsp"><img
				src="../images/cangku.png" style="height: 30px; width: 30px;">
			<font size="4" face="华文行楷" color="#5B5B5B">仓库</font></a>
		</div>
	</div>
	<%
			goods goods = (goods) request.getAttribute("goods");
	%>
	<div align="center" style="margin-top:50px;">


		<form id="myform" action="" method="post">
			<table>
				<tr>
					<td><input type="text" name="barcode" value="<%=goods.getBarcode() %>" /></td>
					<td><input type="button" onclick="search()" value="查询" />
					
				</tr>
				
			</table>
			<div style="margin-top:2%;">
			<table border="1" width="1100px;">
			<tr align="center" height="40px;">
				
					<td>货物名称</td>
					<td>条码号</td>
					<td>品牌</td>
					<td>生产公司</td>
					<td>零售价(元)</td>
					<td>价格(元)</td>
					<td>库存</td>
					<td>删除</td>
					<td>提交</td>
				</tr>
				<%-- <tr align="center" height="40px;">
					<td><%=goods.getGoodsName()%></td>
					<td><%=goods.getBarcode()%></td>
					<td><%=goods.getBrand()%></td>
					<td><%=goods.getSupplier() %></td>
					<td><%=goods.getPrice()%></td>
					<td><%=goods.getNumber() %></td>
				</tr> --%>
				<tr align="center" height="40px;">
				
					<td><input style="height:40px;width:250px;text-align:center;" type="text" name="goodsname" value="<%=goods.getGoodsName() %>"></td>
					<td><input style="height:40px;width:183.333px;text-align:center;" type="text" name="barCode" value="<%=goods.getBarcode() %>"></td>
					<td><input style="height:40px;width:183.333px;text-align:center;" type="text" name="brand" value="<%=goods.getBrand() %>"></td>
					<td><input style="height:40px;width:200px;text-align:center;" type="text" name="supplier" value="<%=goods.getSupplier() %>"></td>
					<td><input style="height:40px;width:100px;text-align:center;" type="text" name="sellprice" value="<%=goods.getSellprice() %>"></td>
					<td><input style="height:40px;width:100px;text-align:center;" type="text" name="price" value="<%=goods.getPrice() %>"></td>
					<td><input style="height:40px;width:100px;text-align:center;" type="text" name="number" value="<%=goods.getNumber() %>"></td>
					<td><input style="height:40px;width:100px;align:center;" type="button" value="删除" onclick="del()" name="goodsMessage"></td>
					<td><input style="height:40px;width:100px;align:center;" type="button" value="提交" onclick="add()" name="goodsMessage"></td>
				</tr>
			</table>
			</div>
			<div style="margin-top:2%;">
			<font size="6" face="华文行楷" color="#FF8000">确认信息无误后即可将货物信息提交至库存内</font>
			</div>
		</form>
	</div>

</body>
</html>