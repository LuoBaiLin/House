<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD><TITLE>青鸟租房 - 首页</TITLE>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<LINK rel=stylesheet type=text/css href="css/style.css">
<META name=GENERATOR content="MSHTML 8.00.7601.17514"></HEAD>
<BODY>
<DIV id=header class=wrap>
<DIV id=logo><a href="guanli.jsp"><IMG src="images/logo.gif"/></a></DIV></DIV>
<DIV id=navbar class=wrap>
<DL class="search clearfix">
  <DT>
   <s:form action="List.action?types=<s:property value='#session.types'/>&streets=<s:property value='#session.streets'/>&Floorrage=<s:property value='#session.Floorrage'/>&Price=<s:property value='#session.Price'/>" method="post">
  <UL>
    <LI class=bold>房屋信息</LI>
    <LI>标题：
   
	    <INPUT class="text" type="text" name="title" /> 
	    <LABEL class="ui-blue">
	    	<INPUT  value=搜索房屋 type="submit" name="search" />
	    </LABEL> 
    </LI></UL></s:form>
    </DT>
  <DD>
  <UL>
    <LI class="first">价格 </LI>
    <LI>
    <SELECT name="Price" onchange="javascript:location.href='List.action?title=<s:property value='#session.title'/>&types=<s:property value='#session.streets'/>&streets=<s:property value='#session.types'/>&Floorrage=<s:property value='#session.Floorrage'/>&Price='+this.value+''"> 
      <OPTION selected value="0-0">不限</OPTION> 
      <OPTION <c:if test="<s:property value='#session.Price == '0-200''/>"> selected="selected" </c:if> value="0-200">200元以下</OPTION> 
      <OPTION <c:if test="<s:property value='#session.Price == '200-400''/>"> selected="selected" </c:if> value="200-400">200元-400元</OPTION> 
      <OPTION <c:if test="<s:property value='#session.Price == '400-1000000''/>"> selected="selected" </c:if> value="400-1000000">400元以上</OPTION>
      </SELECT> </LI></UL></DD>
  <DD>
  <UL>
    <LI class="first">房屋位置</LI>
    <LI>
    <SELECT id="street" name="streets" onchange="javascript:location.href='List.action?title=<s:property value='#session.title'/>&types=<s:property value='#session.types'/>&Price=<s:property value='#session.Price'/>&Floorrage=<s:property value='#session.Floorrage'/>&streets='+this.value+''"> 
    <OPTION selected  value="-1">不限</OPTION>
	<s:iterator value="#session.listStr" id="liststrs" status="st">
	<OPTION <c:if test="<s:property value='#liststrs.id == #streets''/>"> selected="selected" </c:if>  value=<s:property value="#liststrs.id"/>><s:property value="#liststrs.name"/></OPTION> 
	</s:iterator>
    </SELECT> 
      </LI></UL></DD>
  <DD>
  <UL>
    <LI class="first">房型</LI>
    <LI>
    <SELECT name="types" onchange="javascript:location.href='List.action?title=<s:property value='#session.title'/>&streets=<s:property value='#session.streets'/>&Price=<s:property value='#session.Price'/>&Floorrage=<s:property value='#session.Floorrage'/>&types='+this.value+''" > 
	    <OPTION selected value="-1">不限</OPTION> 
	   <s:iterator value="#session.listType" id="listtypes" status="st">
	   <OPTION <c:if test="<s:property value='#listtypes.id==types''/>"> selected="selected" </c:if> value=<s:property value='#listtypes.id'/>><s:property value='#listtypes.name'/></OPTION>
	   </s:iterator>
    </SELECT> 
  </LI></UL></DD>
  <DD>
  <UL>
    <LI class="first">面积 </LI>
    <LI><SELECT name="Floorrage" onchange="javascript:location.href='List.action?title=<s:property value='#session.title'/>&types=<s:property value='#session.streets'/>&streets=<s:property value='#session.types'/>&Floorrage=<s:property value='#session.Floorrage'/>&Floorrage='+this.value+''"> 
    	<OPTION selected value="0-0">不限</OPTION> 
      <OPTION <c:if test="<s:property value='#session.Floorrage == '0-200''/>"> selected="selected" </c:if> value="0-200">200以下</OPTION> 
      <OPTION <c:if test="<s:property value='#session.Floorrage == '200-400''/>"> selected="selected" </c:if> value="200-400">200-400</OPTION> 
      <OPTION <c:if test="<s:property value='#session.Floorrage == '400-1000000''/>"> selected="selected" </c:if> value="400-1000000">400以上</OPTION>
    </SELECT> </LI></UL></DD></DL></DIV>
<DIV class="main wrap">
<TABLE class="house-list">
  <TBODY>
 <s:iterator value="#session.listUhouse" id="houselist"  status="st">
  <TR>
    <TD class="house-thumb"><span><A href="details.jsp" target="_self"><img src="images/thumb_house.gif" width="100" height="75" alt=""></a></span></TD>
    <TD>
      <DL>
        <DT><A href="Details.action?houseId=<s:property value='#houselist.id'/>" target="_self"><s:property value="#houselist.description"/></A></DT>
        <DD><s:property value="#houselist.street.dis.name"/><s:property value="#houselist.street.name"/><s:property value="#houselist.floorrage"/>平米<BR>联系方式：<s:property value="#houselist.contact"/></DD>
      </DL>
    </TD>
    <TD class="house-type"><LABEL class="ui-green"><INPUT onclick="document.location='update.jsp?houseId=<s:property value='#houselist.id'/>'" value="修    改" type="button" name="search"></LABEL></TD>
    <TD class="house-price"><LABEL class="ui-green"><INPUT value="删    除" onclick="document.location='Delete.action?houseId=<s:property value='#houselist.id'/>'" type="button" name="search"></LABEL></TD>
    </TR>
  </s:iterator>  



  </TBODY>
  </TABLE>
<DIV class="pager">
<UL>
  <LI class="current"><A href="List.action?title=<s:property value='#session.title'/>&pageIndex=1&types=<s:property value='#session.types'/>&streets=<s:property value='#session.streets'/>&Price=<s:property value='#session.Price'/>&Floorrage=<s:property value='#session.Floorrage'/>">首页</A></LI>
  <LI><A href="List.action?title=<s:property value='#session.title'/>&pageIndex=<s:property value='#session.pageIndex-1<=0?1:pageIndex-1'/>&types=<s:property value='#session.types'/>&streets=<s:property value='#session.streets'/>&Price=<s:property value='#session.Price'/>&Floorrage=<s:property value='#session.Floorrage'/>">上一页</A></LI>
  <LI><A href="List.action?title=<s:property value='#session.title'/>&pageIndex=<s:property value='#session.pageIndex+1>=#session.pageTotal?#session.pageTotal:#session.pageIndex+1'/>&types=<s:property value='#session.types'/>&streets=<s:property value='#session.streets'/>&Price=<s:property value='#session.Price'/>&Floorrage=<s:property value='#session.Floorrage'/>">下一页</A></LI>
  <LI><A href="List.action?title=<s:property value='#session.title'/>&pageIndex=pageTotal&types=<s:property value='#session.types'/>&streets=<s:property value='#session.streets'/>&Price=<s:property value='#session.Price'/>&Floorrage=<s:property value='#session.Floorrage'/>">末页</A></LI></UL><SPAN 
class="total"><s:property value="#session.pageIndex/#session.pageTotal"/></SPAN> </DIV></DIV>
<DIV id="footer" class="wrap">
<DL>
  <DT>青鸟租房 © 2010 北大青鸟 京ICP证1000001号</DT>
  <DD>关于我们 · 联系方式 · 意见反馈 · 帮助中心</DD></DL></DIV></BODY></HTML>
