<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<style type="text/css">
/* CSS初始化文件 */
body, h1, h2, h3, h4, h5, h6, p, div, ul, ol, dl, li, dt, dd {
	margin: 0;
	padding: 0;
	list-style: none;
	font-size: 12px;
	font-family: "宋体";
}

a {
	text-decoration: none;
	color: #444444;
}

input, img {
	border: 0 none;
	outline-style: none;
	padding: 0;
	margin: 0;
	vertical-align: bottom;
}

.clearfix {
	zoom: 1;
}

.clearfix:after {
	content: "";
	height: 0;
	line-height: 0;
	display: block;
	clear: both;
	visibility: hidden;
}

.fl {
	float: left;
}

.fr {
	float: right;
}

.w {
	width: 1300px;
	margin: 0 auto;
}

/* 左边上边 */
.boss {
	width: 1300px;
	height: 900px;
}

.left1 {
	width: 400px;
	height: 900px;
	/* border-right:3px solid #E6E6E6; */
	border-radius: 0 5px 5px 5px;
	border-color: #fff;
}

.top {
	width: 400px;
	height: 70px;
	background-color: #0363A5;
	position: relative;
	border-radius: 9px 0 0 0;
}

.top-l {
	width: 6px;
	height: 70px;
}

.top-t1 {
	width: 357px;
	height: 70px;
	color: #fff;
	line-height: 70px;
	padding-left: 35px;
}

.top-t1 h1 {
	font-size: 25px;
}

.jlt img {
	width: 27px;
	height: 22px;
	position: absolute;
	bottom: 40px;
	left: 223px;
}

/* 左边下边部分 */
.top-b {
	height: 828px;
	width: 400px;
	background-color: #FFFFFF;
}

.top-l1 {
	width: 360px;
	height: 32px;
	margin: 20px;
	position: relative;
}

.i {
	width: 357px;
	height: 32px;
	border: 1px solid #E4E4E4;
}

.b {
	width: 46px;
	height: 33px;
	background: url(b.fw.png);
	position: absolute;
	right: 0;
	top: 0;
}

.top-l2 {
	width: 359px;
	height: 210px;
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 166px;
}

.top-l2 li {
	height: 42px;
	position: relative;
}

.top-l2 li a {
	display: inline-block;
	height: 20px;
	line-height: 20px;
	margin-right: 56px;
	color: #878787;
}

.top-l2 .oo {
	display: inline-block;
	height: 20px;
	width: 20px;
	background-color: #2E9AE4;
	color: #FFFFFF;
	border-radius: 2px;
	text-align: center;
	margin: 10px 0 10px 0;
	border-radius: 3px;
}

.yy {
	display: inline-block;
	height: 20px;
	color: #515151;
	position: absolute;
	right: 0;
	top: 12px;
}

.sc {
	display: inline-block;
	height: 20px;
	font-size: 14px;
	color: #A6A6A6;
}

.byy {
	margin-left: 0px;
	background-color: #EEEEEE;
}

.top-l3 {
	height: 42px;
	width: 360px;
	margin-left: 20px;
}

.top-l3-1 {
	height: 42px;
	width: 82px;
	background-color: #1D7FC5;
	margin-right: 10px;
}

.top-l3-2 {
	height: 42px;
	width: 82px;
	background-color: #1D7FC5;
	margin-right: 10px;
}

.top-l3-3 {
	height: 42px;
	width: 82px;
	background-color: #1D7FC5;
	margin-right: 10px;
}

.top-l4 {
	width: 360px;
	height: 80px;
	border-top: 1px solid #E5E5E5;
	border-bottom: 1px solid #E5E5E5;
	margin: 20px 0 0 20px;
}

.p1 {
	width: 172px;
	height: 40px;
	background-color: #CFEBFD;
	border: 1px solid #6BBFF9;
	margin-top: 20px;
	text-align: center;
	color: #499AD3;
	font-size: 18px;
	font-weight: 900;
	border-radius: 2px;
}

.p2 {
	width: 172px;
	height: 40px;
	background-color: #EAF6FF;
	border: 1px solid #F0F0F0;
	margin-top: 20px;
	text-align: center;
	color: #499AD3;
	font-size: 18px;
	font-weight: 900;
	border-radius: 2px;
}

.top-l5 {
	width: 360px;
	height: 160px;
	border-bottom: 1px solid #E5E5E5;
	margin-left: 20px;
}

.top-l5 ul {
	margin-top: 20px;
}

.top-l5 li {
	height: 36px;
	color: #515151;
	font-size: 16px;
	font-weight: 600;
	position: relative;
}

.qq {
	position: absolute;
	right: 0;
}

.top-l6 {
	width: 360px;
	height: 52px;
	margin-left: 20px;
	text-align: center;
}

.jf {
	margin-top: 34px;
}

.je {
	margin-top: 20px;
}

.y1 {
	color: #FA9B32;
}

.r1 {
	color: #FF5D5D;
	font-size: 25px;
}

.ss {
	font-size: 20px;
	color: #515151;
	font-weight: 600;
}
/* 右边部分 */
/* 右边上边部分 */
.right1-top {
	height: 70px;
	width: 900px;
	background-color: #0B6DB3;
	border-radius: 0 9px 0 0;
}

.sjjj {
	width: 260px;
	height: 70px;
	line-height: 70px;
	margin-left: 20px;
	color: #fff;
}

.title {
	width: 620px;
	height: 70px;
	line-height: 70px;
}

.title li {
	float: left;
	height: 70px;
}

.title li a {
	display: inline-block;
	height: 70px;
	padding: 0 30px 0 30px;
	color: #fff;
	font-weight: 500;
	font-size: 16px;
	font-family: microsoft yahei;
}

a:hover {
	background-color: #1D7FC5;
}

.md {
	background-color: #1D7FC5;
}

/* 右边中间部分 */
.right1-m {
	width: 900px;
	height: 380px;
	margin-left: 20px;
	margin-top: 20px;
}

.right1-m-1 {
	display: inline-block;
	height: 42px;
	width: 900px;
}

.right1-m-1 dt {
	display: inline-block;
	background-color: #F99B35;
	float: left;
	height: 42px;
	width: 124px;
	line-height: 42px;
	text-align: center;
	margin-right: 10px;
	border: 1px solid #FA9B36;
	color: #FFFFFF;
}

.right1-m-1 dd {
	display: inline-block;
	background-color: #FFFDFB;
	float: left;
	height: 42px;
	width: 124px;
	line-height: 42px;
	text-align: center;
	margin-right: 10px;
	border: 2px solid #FA9B36;
	color: #FA9B36;
}

.right1-m-2 {
	width: 900px;
	height: 330px;
	margin-top: 10px;
}

.right1-m-2-1 {
	width: 124px;
	height: 74px;
	border: 2px solid #D9DBDE;
	margin-right: 10px;
	margin-bottom: 10px;
	text-align: center;
	float: left;
}

.spbj, .spbjb {
	color: #B5B5B5;
	margin-top: 8px;
}

.qyqy {
	color: #F99B35;
	font-size: 18px;
	font-weight: 600;
	margin-top: 8px;
}

.fk1, .fk2, .fk3 {
	width: 30px;
	height: 30px;
	text-align: center;
	margin-bottom: 8px;
	line-height: 30px;
}

.fk2 {
	background-color: #F99B35;
	color: #FFFFFF;
	position: relative;
	right: 0px;
	top: -108px;
}

.fk2 a {
	color: #FFFFFF;
	font-size: 14px;
	font-weight: 900;
}

.fk1, .fk3 {
	background-color: #F1F3F5;
}

.fk1, .fk3 a {
	color: #565C60;
	font-size: 14px;
	font-weight: 900;
}

.fk1 {
	position: relative;
	right: 30px;
	top: -147px;
}

.fk3 {
	position: relative;
	right: 30px;
	top: -107px;
}

.right1-b {
	width: 900px;
	height: 360px;
	background-color: #F7F9FA;
	margin-top: 64px;
}

.right1-b-l {
	width: 466px;
	height: 326px;
	margin: 20px 10px 20px 20px;
	background-color: #FDFDFD;
}

.right1-b-l-t {
	width: 500px;
	height: 180px;
	margin-bottom: 10px;
}

.right1-b-l-b {
	width: 500px;
	height: 120px;
}

.hyxm {
	margin-top: 22px;
	margin-bottom: 42px;
	height: 124px;
	line-height: 34px;
	color: #656565;
}

.hyxm p {
	font-size: 14px;
}

.hydj {
	height: 124px;
	line-height: 34px;
	margin: 22px 10px 42px 44px;
	position: relative;
}

.hydj p {
	
}

.hydj input {
	width: 60px;
	height: 30px;
	background-color: #1D7FC5;
	margin-right: 0;
}

.bj {
	position: absolute;
	left: 90px;
	top: 105px;
}

.zx {
	position: absolute;
	left: 158px;
	top: 105px;
}

.right1-b-l-b {
	width: 466px;
	height: 120px;
}

.czz li {
	width: 147px;
	height: 54px;
	background-color: #EBF7FF;
	color: #4396D0;
	line-height: 54px;
	float: left;
	margin-right: 8px;
	margin-top: 8px;
	text-align: center;
	font-size: 16px;
	font-weight: 600;
}

.right1-b-r {
	width: 380px;
	height: 322px;
	float: right;
	margin-top: 88px;
}

.fkkkk1, .fkkkk2, .fkkkk3 {
	width: 184px;
	height: 156px;
	background-color: #EBF7FF;
	color: #4396D0;
	text-align: center;
	font-size: 20px;
	font-weight: 600;
	line-height: 156px;
	margin-right: 5px;
	margin-top: 5px;
}

.fkkkk4 {
	width: 184px;
	height: 156px;
	background-color: #75CB1C;
	color: #4396D0;
	text-align: center;
	font-size: 20px;
	font-weight: 600;
	line-height: 156px;
	margin-right: 5px;
	margin-top: 5px;
}
</style>
</head>
<body>
	<!-- 左边 -->
	<div class="boss">
		<div class="left1 fl">
			<!-- 左边上边收银系统 -->
			<div class="top clearfix">
				<div class="top-t1 clearfix">
					<h1>WebPos收银系统</h1>
				</div>
				<div class="jlt">
					<img src="pic/you1.fw.png">
				</div>
			</div>
			<!--  左边下边部分 -->
			<div class="top-b ">
				<div class="top-l1">
					<div class="i fl">
						<input type="text" value="请输入商品货号/条形码">
					</div>
					<div class="b fr">
						<input type="button">
					</div>
				</div>
				<div class="top-l2">
					<ul>
						<li><a href="#">商品名称商品名称</a> <span class="oo">1</span> <span
							class="yy">&yen;20.00</span></li>
						<li><a href="#">商品名称商品名称</a> <span class="oo">2</span> <span
							class="yy">&yen;20.00</span></li>
						<li><a href="#">商品名称商品名称</a> <span class="oo">1</span> <span
							class="sc">&nbsp;&nbsp;<del>&yen;20.00</del></span> <span
							class="yy">&yen;15.00</span></li>
						<li><a href="#">商品名称商品名称</a> <span class="oo">1</span> <span
							class="yy"> &yen;20.00</span></li>
						<li class="byy"><a href="#">商品名称商品名称</a> <span class="oo">1</span>
							<span class="yy"> &yen;20.00</span></li>
					</ul>
				</div>
				<div class="top-l3">
					<div class="top-l3-1 fl">
						<img src="pic/jia.fw.png" width="82" height="42">
					</div>
					<div class="top-l3-2 fl">
						<img src="pic/jian.fw.png" width="82" height="42">
					</div>
					<div class="top-l3-3 fl">
						<img src="pic/scg.fw.png" height="42" width="82">
					</div>
					<div class="top-l3-4 fl">
						<img src="pic/heng.fw.png" width="82" height="42">
					</div>
				</div>
				<div class="top-l4">
					<input type="text" value="门店自提" class="p1"> <input
						type="text" value="送货上门" class="p2">
				</div>
				<div class="top-l5">
					<ul>
						<li><a href="#">商品数/总数量(件)</a> <span class="qq">5/6</span></li>
						<li><a href="#">原始金额/优惠(元)</a> <span class="qq">120/5</span>
						</li>
						<li><a href="#">物流配送</a> <span class="qq">5/6</span></li>
						<li><a href="#">账户余额抵扣</a> <span class="qq">0.00元</span></li>
					</ul>
				</div>
				<div class="top-l6">
					<div class="jf fl">
						积分： <span class="y1">120</span>元
					</div>
					<div class="je fr">
						<span class="ss">实收金额：</span> <span class="r1">115.00</span>元
					</div>
				</div>
			</div>
		</div>
		<!-- 右边部分 -->
		<div class="right1 fl clearfix">
			<div class="right1-top clearfix">
				<div class="sjjj fl clearfix">2015年04月16日 星期四 13：14：20</div>
				<div class="title fl clearfix">
					<ul>
						<li><a href="#">员工信息</a></li>
						<li><a href="#">报损</a></li>
						<li><a href="#" class="md">门店日结</a></li>
						<li><a href="#">员工交接</a></li>
						<li><a href="#">员工注销</a></li>
					</ul>
				</div>
				<div class="right1-m fl clearfix">
					<div class="right1-m-1 fl clearfix">
						<dl class="spbt clearfix">
							<dt>热门商品</dt>
							<dd>商品标题</dd>
							<dd>商品标题</dd>
							<dd>商品标题</dd>
							<dd>商品标题</dd>
							<dd>商品标题</dd>
						</dl>
					</div>
					<div class="right1-m-2 fl">
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>

						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="right1-m-2-1">
							<div class="spbj">商派笔记本电脑</div>
							<div class="spbjb">商派笔记本电脑</div>
							<div class="qyqy">&yen;20.00</div>
						</div>
						<div class="fk1 fr">
							<a href="">1</a>
						</div>
						<div class="fk2 fr">
							<a href="">2</a>
						</div>
						<div class="fk3 fr">
							<a href="">3</a>
						</div>
					</div>
					<!-- 右下边部分 -->
					<!-- 右下边的左边部分 -->
					<div class="right1-b fl">
						<div class="right1-b-l fl">
							<div class="right1-b-l-t fl">
								<div class="hyxm fl">
									<p>会员姓名:商派(先生/女生)</p>
									<p>用户名:186XXXXXXX</p>
									<p>会员卡卡号:888888888888888</p>
									<p>最近消费时间:2015-04-23</p>
								</div>
								<div class="hydj fl">
									<p>会员等级:☆☆☆☆☆</p>
									<p>积分：100分</p>
									<p>消费次数：20次</p>
									<span class="bj"><input type="button" value="编辑"></span>
									<span class="zx"><input type="button" value="注销"></span>
								</div>
							</div>
							<div class="right1-b-l-b fl">
								<ul class="czz fl">
									<li>优惠</li>
									<li>账户余额</li>
									<li>充值</li>
									<li>挂单</li>
									<li>积分兑换</li>
									<li>退换货</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- 右下边的右边部分 -->
				<div class="right1-b-r fl ">
					<div class="fkkkk1 fl">
						<a href="">现金支付</a>
					</div>
					<div class="fkkkk2 fr">
						<a href="">刷卡支付</a>
					</div>
					<div class="fkkkk3 fl">
						<a href="">手机支付</a>
					</div>
					<div class="fkkkk4 fr">
						<a href="">结算</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>