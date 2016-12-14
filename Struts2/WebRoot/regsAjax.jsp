<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户名 验证</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  <script type="text/javascript" src="js/jquery-1.8.0.js"></script>
  <script type="text/javascript">
  function validate(){
  	var name=$("#uname").val();
  	if(name == null || name == ""){
  		$("#message").html("&nbsp;用户名不能为空");
  	}else{
  	
  	/* 	//将ajax请求发送到server.jsp返回验证结果
  		//使用Ajax发送GET请求及处理相应 	
  	//1.创建XMLHTTPRequest对象  
        if(window.XMLHttpRequest){  //返回值为TRUE时说明是新版本IE或其他浏览器
            xmlhttp =new XMLHttpRequest();  
         }else{
         	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
         }
	//2.设置回调参数
		xmlhttp.onreadystatechange=callback;
	//3.初始化XMLHttpServletRequest组件
		var url="server.jsp?name="+name;//服务器端URL的地址，name为用户名文本框中的值
  		xmlhttp.open("GET", url,true);
  	//4.发送请求
  		xmlhttp.send(null);
  		 //回调函数callBack中处理服务器相应代码
		function callback(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			var result=xmlhttp.responseText;
			if($.trim(result)=="false"){
				$("#message").html("&nbsp;用户名已存在");
			}else{
				$("#message").html("&nbsp;用户名可用");
			}
			}
		} */
		var url="server.jsp";		
		var data="name="+name;
		/* $.ajax({
			url:url,
			type:'POST',
			data:data,
			dataType:'text',
			success:function(result){
  				if($.trim(result)=="false"){
					$("#message").html("&nbsp;用户名已存在");
				}else{
					$("#message").html("&nbsp;用户名可用");
				}
  			},
  			error:function(){
  				$("#message").html("&nbsp;验证出现错误");
  			}
		}); */
		/* $.get(url,data,function(result){
			if($.trim(result)=="false"){
					$("#message").html("&nbsp;用户名已存在");
				}else{
					$("#message").html("&nbsp;用户名可用");
				}
		}); */
		$.post(url,data,function(result){
			if($.trim(result)=="false"){
					$("#message").html("&nbsp;用户名已存在!");
				}else{
					$("#message").html("&nbsp;用户名可用");
				}
		},"text");
  	}
  }
/*   function validatas(){
 	 var emails=$("#email").val();
  	if(emails == null || emails == ""){
  		$("#message1").html("&nbsp;邮箱不能为空");
  	}else{
  		var urls="server.jsp";		
		var datas="email="+email;
		$.ajax({
			url:urls,
			data:datas,
			dataType:'JSON'
		});
  }}; */
/*   $(function(){
  			//定义JSON格式的user对象，并在id为objectDiv的div中输出
  			var user={"id":1,"name":"张三","pwd":"123"};
  			$("#objectDiv").append("ID:"+user.id+"<br>")
  						.append("用户名:"+user.name+"<br>")
  						.append("密码:"+user.pwd+"<br>");
  			//定义JSON格式的字符串数组，并在id为ArrayDiv元素中显示
  			var array=["中","美","俄"];
  			for(var i=0;i<array.length;i++){
  				$("#ArrayDiv").append(array[i]+"&nbsp;");
  			}
  			//定义JSON格式的user对象数组，并在id为objectArrayDiv元素中显示
  			//使用table输出
  			var userArray=[
  				{"id":2,"name":"李四","pwd":"123"},
  				{"id":3,"name":"王五","pwd":"456"},
  				{"id":4,"name":"孙六","pwd":"789"}
  			];
  			$("#objectArrayDiv").append("<table>")
  						.append("<tr>")
  						.append("<td>ID</td>")
  						.append("<td>用户名</td>")
  						.append("<td>密码</td>")
  						.append("</tr>");
  			for(var i=0;i<userArray.length;i++){
  					$("#objectArrayDiv").append("<tr>")
  							.append("<td>"+userArray[i].id+"&nbsp;</td>")
  							.append("<td>"+userArray[i].name+"&nbsp;</td>")
  							.append("<td>"+userArray[i].pwd+"&nbsp;</td>")
  							.append("</tr>");
  			}
  			$("#objectArrayDiv").append("</table>");
  		}); */
  </script>
  <style type="text/css">
  #message{color:red;font-size:12;}
  </style>
  </head>
  <body>
<form action="">
<table>
<tr>
<td>用户名：</td>
<td><input type="text" name="name" onblur="validate()" id="uname"/></td>
<td><div id="message"></div></td>
</tr>
<tr>
<td>Email：</td>
<td><input type="text" name="email" onblur="validatas()" id="email"/></td>
<td><div id="message1"></div></td>
</tr>
</table>
</form>
一：JSON格式的 user对象：<div id="objectDiv"></div><br>
二：JSON格式的 字符串数组：<div id="ArrayDiv"></div><br>
三：JSON格式的 user对象数组：<div id="objectArrayDiv"></div><br>

  </body>
</html>
