<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>ユーザー情報の更新</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
	border-collapse: collapse;
	width: 60%;
}

td.t_top {
	border-top: #b3b3b3 4px solid;
}

th {
	border-bottom: #e3e3e3 1px dotted;
	text-align: left;
	padding: 10px;
	font-weight: bold;
	font-size: 13px;
	background-color: navy;
	color: white;
	width: 25%
}

td {
	border-bottom: #e3e3e3 1px dotted;
	text-align: left;
	padding: 10px;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#top p {
	text-transform: uppercase;
	text-align: center;
	color: #666;
	margin: 0 auto;
	letter-spacing: 4px;
	font: normal 26px/1 Verdana, Helvetica;
	font-size: 25px;
	position: relative;
}

#header {
	width: 100%;
	height: 80px;
	background-color: #000080;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: #000080;
	clear: both;
}
</style>

</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>ユーザー情報の更新内容を確認</p>
		</div>
		<div>
			<h3>更新する内容は、以下でよろしいですか。</h3>
			<table>
				<s:form action="UserUpdateCompleteAction">
					<tr id="box">
						<th>新しいログインID</th>
						<td><s:property value="loginUserId" escape="false" /></td>
					</tr>
					<tr id="box">
						<th>新しいログインパスワード</th>
						<td><s:property value="loginPass" escape="false" /></td>
					</tr>
					<tr id="box">
						<th>新しいユーザー名</th>
						<td><s:property value="userName" escape="false" /></td>
					</tr>
					<s:hidden name="id" value="%{id}" />
					<s:hidden name="loginUserId" value="%{loginUserId}" />
					<s:hidden name="loginPass" value="%{loginPass}" />
					<s:hidden name="userName" value="%{userName}" />
					<s:submit value="ユーザー情報を更新する" />

				</s:form>
			</table>

			<div>
				<a href='<s:url action="UserDetailAction" />' class="square_btn">ユーザー詳細へ</a>
			</div>
			<div>
				<a href='<s:url action="UserListAction" />' class="square_btn">ユーザー一覧へ</a>
			</div>
			<div>
				<a href='<s:url action="GoAdminAction" />' class="square_btn">管理画面へ</a>
			</div>
		</div>
	</div>

	<div id="footer"></div>
</body>
</html>