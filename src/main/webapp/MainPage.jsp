<%@ page import="java.util.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가위 바위 보</title>
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
	#contents{
		background-color : skyblue;
		height : 600px;
		text-align : center;
		border:1px soild grey;
	}
	.select{
		background-color : white;
		border : 1px solid grey;
		width : 450px;
		height : 450px;
		display : inline-block;
        margin: 20px;
	}	
	img{
		width: 200px;
		height: 200px;
		margin: 50px;
	}
	button{
		background-color : skyblue;
		cursor : pointer;
		color : black;
		border : 1px solid none;
		font-size : 20px;
	}
	button:hover{
		background-color : white;
		cursor : pointer;
		color : red;
		border : 1px solid black;
		font-size : 20px;
	}
	footer{
		background-color : grey;
		height : 200px;
	}	
</style>
</head>
<body>
	<header>
        <h1 id ="logo">가위 바위 보</h1>
	</header>
	<div id ="contents">
		<form action="ResultPage.jsp" method = "post">
			<div class = "select">
				<img src="image/ssissor.png" alt="ssissor" />
				<p></p>
				<button onclick = "location.href = 'ResultPage.jsp'" name="rsp" value = "0">가위</button>
			</div>
			<div class = "select">
				<img src="image/rock.png" alt="rock" />
				<p></p>
				<button onclick = "location.href = 'ResultPage.jsp'" name="rsp" value = "1">바위</button>
			</div>
			<div class = "select">
				<img src="image/paper.png" alt="paper" />
				<p></p>
				<button onclick = "location.href = 'ResultPage.jsp'" name="rsp" value = "2">보</button>
			</div>
		</form>
	</div>
	<footer>
	
	</footer>
</body>
</html>