<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><s:text name="regs.page"/></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<s:form action="register.action" method="post">
<DIV class=infos>
<TABLE class=field>
  <TBODY>
  <TR>
    <TD class=field><s:text name="name"></s:text></TD>
    <TD><s:textfield   name="users.name" lable="%{getText('users.name')}"/>
    </TD></TR>
  <TR>
    <TD class=field><s:text name="password"></s:text></TD>
    <TD><s:password   name="users.password" lable="%{getText('users.password')}"/></TD></TR>
  <TR>
    <TD class=field><s:text name="repassword"></s:text></TD>
    <TD><s:password   name="repassword" lable="%{getText('users.repassword')}"/></TD></TR>
  <TR>
    <TD class=field><s:text name="telephone"></s:text></TD>
    <TD><s:textfield    name="users.telephone" lable="%{getText('users.telephone')}"/> </TD></TR>
  <TR>
    <TD class=field><s:text name="username"></s:text></TD>
    <TD><s:textfield   name="users.username" lable="%{getText('users.username')}"/> </TD></TR></TBODY></TABLE>
    <div id="errors" style="color: red;text-align: center;"></div>
<DIV class=buttons>
<s:submit value="%{getText('submit')}"/>
</DIV></DIV>
<s:fielderror/>
</s:form>
  </body>
</html>
