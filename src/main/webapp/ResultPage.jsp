<%@page import="jsp_RSP.RSP" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
<style>
	body{
		display : flex;
		flex-direction:column;
		margin : 0;
		padding : 0;
	}
	header{
		color : white;
		background-color:black;
	}
	#logo{
		text-align : center;
	}
	img{
		width: 200px;
		height: 200px;
		margin: 50px;
	}
	#contents{
		background-color : skyblue;
		height : 600px;
		text-align:center;
		border:1px soild grey;		
	}
	.result{
		background-color : white;
		border : 1px solid grey;
		width : 450px;
		height : 450px;
		display : inline-block;
        margin: 20px;
	}
	button{
		font-size : 20px;
		cursor : pointer;
	}
	footer{
		background-color : grey;
		height : 200px;
	}
</style>
</head>
<body>
	<%
	int rsp = Integer.valueOf(request.getParameter("rsp").trim());
	 RSP pc = new RSP();
	 RSP player = new RSP(rsp);
	
	%>
	<header>
        <h1 id ="logo">가위 바위 보</h1>
	</header>
	<div>
		<div id = "contents">
			<div class = "result">
				<img src=<%=player.getImg() %> alt="" />
				<p>player</p>
			</div>
			<div class = "result">
				<img src=<%=player.getMatchImg(pc) %> alt="" />
				<p> <%=player.match(pc) %>  </p>
			</div>
			<div class = "result">
				<img src=<%=pc.getImg() %> alt="" />
				<p>pc</p>
			</div>
			<p>
				<button onclick = "location.href = 'MainPage.jsp'">다시하기</button>
			</p>
		</div>
	</div>
	<footer>
	
	</footer>
	
</body>
</html>