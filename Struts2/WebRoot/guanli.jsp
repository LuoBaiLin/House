<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>青鸟租房 - 用户管理</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="css/style.css">

<META name=GENERATOR ></HEAD>
<BODY>
<DIV id=header class=wrap>
<DIV id=logo><IMG src="images/logo.gif"></DIV>
<DIV class=search><LABEL class="ui-green searchs"><a href="list.jsp" title="">房屋信息列表</a></LABEL>    <LABEL class="ui-green searchs"><a href="fabu.jsp" title="">发布房屋信息</a></LABEL> 
<LABEL class=ui-green><INPUT onclick='document.location="login.jsp"' value="退       出" type=button name=search></LABEL> 
</DIV></DIV>
<DIV class="main wrap">
<DIV id=houseArea>
<TABLE class=house-list>
  <TBODY>
<s:iterator value="#session.listUhouse" id="houselist"  status="st">
  <TR>
    <TD class="house-thumb"><span><A href="details.jsp" target="_blank"><img src="images/thumb_house.gif" width="100" height="75" alt=""></a></span></TD>
    <TD>
      <DL>
        <DT><A href='<s:url value="Details.action"><s:param name="houseId" value="#houselist.id"/></s:url>' target="_self"><s:property value="#houselist.description"/></A></DT>
        <DD><s:property value="#houselist.street.dis.name"/>县  <s:property value="#houselist.street.name"/>   <s:property value="#houselist.floorrage"/>平米<BR>联系方式：<s:property value="#houselist.contact"/></DD>
      </DL>
    </TD>
    <TD class="house-type"><LABEL class="ui-green"><INPUT onclick="document.location='update.jsp?houseId=<s:property value='#houselist.id'/>'" value="修    改" type="button" name="search"></LABEL></TD>
    <TD class="house-price"><LABEL class="ui-green"><INPUT value="删    除" onclick="document.location='Delete.action?houseId=<s:property value='#houselist.id'/>'" type="button" name="search"></LABEL></TD>
    </TR>
  </s:iterator>  
    </TBODY></TABLE></DIV>
</DIV>
<DIV id="footer" class="wrap">
<DL>
  <DT>青鸟租房 © 2010 北大青鸟 京ICP证1000001号</DT>
  <DD>关于我们 · 联系方式 · 意见反馈 · 帮助中心</DD></DL></DIV></BODY></HTML>
