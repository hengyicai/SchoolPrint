<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>确认订单</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/indexStyle.css" rel="stylesheet">
<link href="css/footerStyle.css" rel="stylesheet">
<link href="css/shopHomeStyle.css" rel="stylesheet">
<link href="css/make_sure.css" rel="stylesheet">

<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.js"></script>
		<![endif]-->

</head>

<body>
	<%@ include file="header.jsp"%>
	<div class="content" id="container">
		<h1>确认订单</h1>
		<div class="orderDiv">
			<form>
				<h4>
					店铺名：<span>赵龙打印店</span>
				</h4>
				<h4>确定收货地址：</h4>
				<br>
				<ul id="addr_ul">
				</ul>
				<button class="btn btn-danger" style="float: right;">添加地址</button>
				<br>
			</form>
			<p>文件列表：</p>
			<table class="table table-striped table-bordered table-hover"
				id="orderTable">
				<thead>
					<tr>
						<th width="30%">文件名</th>
						<th width="10%">页数</th>
						<th width="30%">打印设置</th>
						<th width="10%">份数</th>
						<th width="10%">单价</th>
						<th width="10%">总价</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
			<!-- 订单总信息 -->
			<div class="orderInfo">
				<span>总价：</span>
			</div>
			<!-- 备注信息 -->
			<br>
			<div>
				<p>备注：</p>
				<textarea class="form-control" rows="3"></textarea>
			</div>

			<div class="btnDiv">
				<button class="btn btn-primary">立即下单</button>
			</div>
		</div>
	</div>
	<br>

	<!-- 添加新地址 -->
	<div class="modal fade" id="addFile" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加新地址</h4>
				</div>
				<!--添加新地址内容-->
				<!--表单-->
				<form class="form-horizontal" role="form" action="" method="post"
					id="addAddrForm">
					<div class="modal-body">
						<!--联系人-->
						<div class="form-group">
							<label for="addUserName" class="col-sm-2 control-label">联系人：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="newUserName"
									name="userName" placeholder="默认联系人">
							</div>
						</div>
						<!--详细地址-->
						<div class="form-group">
							<label for="addAddrInfo" class="col-sm-2 control-label">详细地址：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="newAddrInfo"
									name="addrInfo" placeholder="默认详细地址">
							</div>
						</div>

						<!--电话-->
						<div class="form-group">
							<label for="addPhone" class="col-sm-2 control-label">电话：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="newPhone"
									name="phone" placeholder="默认电话">
							</div>
						</div>

						<!--备用电话-->
						<div class="form-group">
							<label for="addSecPhone" class="col-sm-2 control-label">备用电话：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="newSecPhone"
									name="secPhone" placeholder="默认备用电话">
							</div>
						</div>
					</div>
					<!--添加信息窗口底部-->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							取消</button>
						<button type="button" class="btn btn-primary" onclick="addFile();">添加</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/make_sure.js"></script>
</body>
</html>