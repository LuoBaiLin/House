<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD><TITLE><s:text name="regs.page"/></TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="css/style.css">
<META name=GENERATOR content="MSHTML 8.00.7601.17514"></HEAD>
<script type="text/javascript" src="js/jquery-1.8.0.js"></script>
<%-- <script type="text/javascript">
  	
  	function checkRegist(){
  		var name = $("input[name=name]").val();
  		var fPwd = $("input[name=password]").val();
  		var sPwd = $("input[name=repassword]").val();
  		if(name.length<3){
  			$("#errors").html("用户名长度至少为3");
  			return false;
  		}else if(fPwd.length<=0){
  			$("#errors").html("请输入密码");
  			return false;
  		}else if(fPwd!=sPwd){
  			$("#errors").html("两次输入的密码不一致");
  			return false;
  		}
  		return true;
  	}
  	
  	</script> --%>
<BODY>
<DIV id=header class=wrap>
<DIV id=logo><IMG src="images/logo.gif"></DIV></DIV>
<DIV id=regLogin class=wrap>
<DIV class=dialog>
<DL class=clearfix>
  <DT style="background-color: #6699CC;"><a href="login.jsp" style="text-decoration: none;color: white;"><s:text name="reastLogin"></s:text></a></DT>
  <DD class=past><s:text name="addourinfo"></s:text></DD></DL>
<DIV class=box>
<s:form action="registerAction" method="post">
<DIV class=infos>
<TABLE class=field>
  <TBODY>
  <TR>
    <TD class=field><s:text name="name"></s:text></TD>
    <TD><s:textfield   name="users.name" lable="%{getText('users.name')}"/>
    </TD></TR>
  <TR>
    <TD class=field><s:text name="password"></s:text></TD>
    <TD><s:password   name="users.password"/></TD></TR>
  <TR>
    <TD class=field><s:text name="repassword"></s:text></TD>
    <TD><s:password   name="repassword"/></TD></TR>
  <TR>
    <TD class=field><s:text name="telephone"></s:text></TD>
    <TD><s:textfield    name="users.telephone"/> </TD></TR>
  <TR>
    <TD class=field><s:text name="username"></s:text></TD>
    <TD><s:textfield   name="users.username"/> </TD></TR></TBODY></TABLE>
    <div id="errors" style="color: red;text-align: center;"></div>
<DIV class=buttons>
<s:submit value="立即注册"/>
</DIV></DIV>
<s:fielderror/>
</s:form></DIV></DIV></DIV>
<DIV id=footer class=wrap>
<DL>
  <DT>青鸟租房 © 2010 北大青鸟 京ICP证1000001号</DT>
  <DD>关于我们 · 联系方式 · 意见反馈 · 帮助中心</DD></DL></DIV></BODY></HTML>
