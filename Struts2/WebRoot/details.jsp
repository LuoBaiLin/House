﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>青鸟租房 -发布房屋信息</TITLE>
<META content="text/HTMl; charset=utf-8" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="css/style.css">
<META name=GENERATOR content="MSHTML 8.00.7601.17514"></HEAD>
<BODY>

<DIV id=header class=wrap>
<DIV id=logo><IMG src="images/logo.gif"></DIV>
<DIV class=search>
<FORM method=get><INPUT class=text type=text name=keywords>
 <LABEL class="ui-green searchs"><a href="list.jsp" target="_blank">搜索房屋</a></LABEL> 
</FORM></DIV></DIV>
<DIV id=navbar class=wrap>
<DL class="search clearfix">
  <DT>
  <UL>
    <LI class=bold>房屋信息</LI>
    <LI>标题：<INPUT class=text type=text name=title> <LABEL class=ui-blue><INPUT onclick=doSearch() value=搜索房屋 type=button name=search></LABEL> 
    </LI></UL></DT>
  <DD>
  <UL>
    <LI class=first>价格 </LI>
    <LI><SELECT id=price name=price> <OPTION selected value="">不限</OPTION> 
      <OPTION value=0-100>100元以下</OPTION> <OPTION 
      value=100-200>100元—200元</OPTION> <OPTION 
    value=200-1000000>200元以上</OPTION></SELECT> </LI></UL></DD>
  <DD>
  <UL>
    <LI class=first>房屋位置</LI>
    <LI><SELECT id=street name=street_id> <OPTION selected 
      value="">不限</OPTION> <OPTION value=1000>知春路</OPTION> <OPTION 
      value=1001>中关村大街</OPTION> <OPTION value=1002>学院路</OPTION> <OPTION 
      value=1003>朝阳路</OPTION></SELECT> </LI></UL></DD>
  <DD>
  <UL>
    <LI class=first>房型</LI>
    <LI><SELECT id=housetype name=type_id> <OPTION selected 
      value="">不限</OPTION> <OPTION value=1000>一室一厅</OPTION> <OPTION 
      value=1001>一室两厅</OPTION> <OPTION value=1002>两室一厅</OPTION> <OPTION 
      value=1003>两室两厅</OPTION></SELECT> </LI></UL></DD>
  <DD>
  <UL>
    <LI class=first>面积 </LI>
    <LI><SELECT id=floorage name=floorage> <OPTION selected 
      value="">不限</OPTION> <OPTION value=0-40>40以下</OPTION> <OPTION 
      value=40-500>40-500</OPTION> <OPTION 
    value=500-1000000>500以上</OPTION></SELECT> </LI></UL></DD></FORM></DL></DIV>
<DIV id=position class=wrap>当前位置：青鸟租房网 - 浏览房源</DIV>
<DIV id=view class="main wrap">
<DIV class=intro>
<DIV class=lefter>
<H1><s:property value="#session.houseDetailsList.title"/></H1>
<DIV class=subinfo><s:property value="#session.houseDetailsList.pubdate"/></DIV>
<DIV class=houseinfo>
<P>户　　型：<SPAN><s:property value="#session.houseDetailsList.types.name "/></SPAN></P>
<P>面　　积：<SPAN><s:property value="#session.houseDetailsList.floorrage"/>m<SUP>2</SUP></SPAN></P>
<P>位　　置：<SPAN><s:property value="#session.houseDetailsList.street.dis.name"/><s:property value="#session.houseDetailsList.street.name"/></SPAN></P>
<P>联系方式：<SPAN><s:property value="#session.houseDetailsList.contact"/></SPAN></P></DIV></DIV>
<DIV class=side>
<P><A class=bold href="javascript:void(0)"><s:property value="#session.houseDetailsList.description"/></A></P>
<P>资质证书：有</P>
<P>内部编号:1000</P>
<P>联 系 人：<s:property value="#session.houseDetailsList.users.name"/></P>
<P>联系电话：<s:property value="#session.houseDetailsList.users.telephone"/><SPAN></SPAN></P>
<P>手机号码：<SPAN>暂无</SPAN></P></DIV>
<DIV class=clear></DIV>
<DIV class=introduction>
<H2><SPAN><STRONG>房源详细信息</STRONG></SPAN></H2>
<DIV class=content>
<P><s:property value="#session.houseDetailsList.description"/></P></DIV></DIV></DIV></DIV>
<DIV id=footer class=wrap>
<DL>
  <DT>青鸟租房 © 2010 北大青鸟 京ICP证1000001号</DT>
  <DD>关于我们 · 联系方式 · 意见反馈 · 帮助中心</DD></DL></DIV>
</BODY>
</HTML>