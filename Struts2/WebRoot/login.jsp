<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD><TITLE>青鸟租房 - 用户登录</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="css/style.css">
<META name=GENERATOR content="MSHTML 8.00.7601.17514">
<script type="text/javascript" src="js/jquery-1.8.0.js"></script>
</HEAD>
<script type="text/javascript">
  	/* function check(){
  		var name = $("input[name=name]").val();
  		var pwd = $("input[name=password]").val();
  		if(name.length<=0){
  			$("#errors").html("请输入用户名");
  			return false;
  		}else if(pwd.length<=0){
  			$("#errors").html("请输入密码");
  			return false;
  		}
  		return true;
  	} */
  	</script>
<BODY>
<DIV id=header class=wrap>
<DIV id=logo><IMG src="images/logo.gif"></DIV></DIV>
<DIV id=regLogin class=wrap>
<DIV class=dialog>
<DIV class=box>
<H4>用户登录</H4>
 <s:form action="login.action" method="post" >
<!-- <FORM id=user method=post name=user action=Login.action onsubmit="return check()"> -->
<DIV class=infos>
<TABLE class=field style="position:relative;left:80px;">
  <TBODY>
  <TR>
    <TD colSpan=2></TD></TR>
  <TR>
    <TD class=field>用 户 名：</TD>
    <TD><s:textfield id="user_name" class="text"  name="name"/> </TD>
  </TR>
  <TR>
    <TD class=field>密　　码：</TD>
    <TD><s:password id="user_password" class="text"  name="password "/></TD>
  </TR>
</TBODY>
</TABLE>
<div id="errors" style="color: red;text-align: center;"></div>
<DIV class=buttons> 
<s:submit value="登录"></s:submit>
<INPUT onclick='document.location="regs.jsp"' value=注册 type=button> 
</DIV>
</DIV>
<!-- </FORM> -->
</s:form>
</DIV>
</DIV>
</DIV>
<DIV id=footer class=wrap>
<DL>
  <DT>青鸟租房 © 2010 北大青鸟 京ICP证1000001号</DT>
  <DD>关于我们 · 联系方式 · 意见反馈 · 帮助中心</DD></DL></DIV>
  <%-- <s:set name="age" value="10" scope="request"/>
    <s:set name="name" value="'dsaf'" scope="session"/>
      <s:set name="id" value="5" scope="application"/>
      Request作用域中age的值：<s:property value="#request.age"/><br/>
         session作用域中name的值：<s:property value="#session.name"/><br/>
            application作用域中id的值：<s:property value="#application.id"/><br/>
            使用attr对象获取applicationde作用域中的id值：
            <s:property value="#attr.id"/><br/>
            ============================================<br/>
      <s:set name="contry1" value="china"/>  
      <s:set name="contry2" value="'china'"/>  
      变量contry1：<s:property value="#contry1"/><br/>
    变量contry2：<s:property value="#contry2"/><br/>  
    使用request对象获取contry2
    <s:property value="#request.contry2"/>  <br/> 
    ============================================<br/>
    <s:set name="myurl" value="'http://www.sohu.com'"/>
        <s:property value="#myurl"/><br/> 
        <s:url value="#myurl"/><br/> 
        <s:url value="%{#myurl}"/><br/>
    ============================================<br/>     
     <s:date name="currentDate" format="dd/MM/yyyy"/>
     <s:date name="currentDate"/> --%>
    <%--  <s:form action="datess.action">
     <s:textfield name="dates" label="日期"/>
     <s:submit value="提交"/>
     </s:form>
     <font color="red"><s:property value="dates"/><s:fielderror/></font> --%>
     
     <%--文件上传下载及显示图片 --%>
<%-- <div><s:form action="uploads.action" enctype="multipart/form-data" method="post">
   	 <s:textfield name="title" label="标题" /><br/>
   	 <s:file name="upload" label="选择文件"/><br/>
   	 <s:file name="upload" label="选择文件"/><br/>
   	 <s:file name="upload" label="选择文件"/><br/>
   	 <s:submit name="submit" value="上传文件"/>
     </s:form>
    <a href="download.action?fileName=404.png">点击此处下载文件</a>
</div> --%>
  </BODY></HTML>
