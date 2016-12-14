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
<TITLE>青鸟租房 -修改房屋信息</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="css/style.css">
<META name=GENERATOR content="MSHTML 8.00.7601.17514">
<script type="text/javascript" src="js/jquery-1.8.0.js"></script></HEAD>
<script type="text/javascript">
	var id = document.getElementById("district_id").value;
	$("select[name=street_id]").empty();
	$("select[name=street_id]").append($("#streetInfo_"+id).html()); 
function streets(){
	var id = document.getElementById("district_id").value;
	$("select[name=street_id]").empty();
 	$("select[name=street_id]").append($("#streetInfo_"+id).html()); 
};

</script>
<BODY>
<DIV id=header class=wrap>
<DIV id=logo><IMG src="images/logo.gif"></DIV></DIV>
<DIV id=regLogin class=wrap>
<DIV class=dialog>
<DL class=clearfix>
  <DT style="background-color: #6699CC;"><a href="Guanli.action" style="text-decoration: none;color: white;">返回房屋信息列表</a></DT>
  <DD class=past>修改房屋信息</DD></DL>
<DIV class=box>
<s:form action="Update.action?houseId=<s:property value='#session.listUhouse.id'/>" method="post">
<DIV class="infos">
<TABLE class="field">
  <TBODY>
  <TR>
    <TD class="field">标　　题：</TD>
    <TD><INPUT id="add_action_title" class="text" type="text" value="<s:property value='#session.houseDetailsList.title'/>" name="title"> </TD></TR>
    
  <TR>
    <TD class=field>户　　型：</TD>
    <TD>
    <SELECT class="text" name="type_id">
	 <s:iterator value="#session.listType" id="typeList" status="st">
	 <OPTION value="<s:property value='#session.houseDetailsList.types.id '/>"><s:property value="#session.houseDetailsList.types.name "/></OPTION> 
	 </s:iterator>
    </SELECT>
    
    </TD></TR>
  <TR>
    <TD class="field">面　　积：</TD>
    <TD><INPUT id=add_action_floorage class="text" type="text" value="<s:property value='#session.houseDetailsList.floorrage'/>" name="floorage"></TD></TR>
  <TR>
    <TD class="field">价　　格：</TD>
    <TD><INPUT id="add_action_price" class="text" type="text" value="<s:property value='#session.houseDetailsList.price'/>" name="price"> </TD></TR>
  <TR>
    <TD class="field">房产证日期：</TD>
    <TD><INPUT class="text" type="text" value="<s:property value='#session.houseDetailsList.pubdate'/>" name="houseDate"></TD></TR>
  <TR>
    <TD class="field">位　　置：</TD>
 <TD>区：
    <SELECT onchange="streets()" class="text" name="district_id" id="district_id"> 
    	<OPTION selected="selected" value=0>请选择</OPTION>
	 	 <s:iterator value="#session.listDis" id="disList" status="st"> 
		 	<OPTION value=<s:property value="#disList.id"/>><s:property value="#disList.name"/></OPTION> 
	 	 </s:iterator>
    </SELECT>
	  <s:iterator value="#session.listDis" id="disList" status="st">
	  		 <SELECT id="streetInfo_<s:property value="#disList.id"/>" style="display:none;">
		    	 <s:iterator value="#disList.streets" id="dis_street" status="st" >
				  <OPTION value=<s:property value="#dis_street.id"/>><s:property value="#dis_street.name"/></OPTION> 
				     </s:iterator>
			 </SELECT> 
	  </s:iterator>
    	 街：
    <SELECT class="text" name="street_id">
		<OPTION value=0>请选择区县</OPTION>
    </SELECT> 
    </TD>
    
    </TR>
  <TR>
    <TD class="field">联系方式：</TD>
    <TD><INPUT id="add_action_contact" class="text" value="<s:property value='#session.houseDetailsList.contact'/>" type="text" name="contact"> </TD></TR>
  <TR>
    <TD class="field">详细信息：</TD>
    <TD><TEXTAREA name="description" ><s:property value='#session.houseDetailsList.description'/></TEXTAREA></TD></TR></TBODY></TABLE>
<DIV class="buttons"><INPUT value=立即修改 type="submit"> 
</DIV></DIV>
</s:form>
<!-- </FORM> --></DIV></DIV></DIV>
<DIV id="footer" class="wrap">
<DL>
  <DT>青鸟租房 © 2010 北大青鸟 京ICP证1000001号</DT>
  <DD>关于我们 · 联系方式 · 意见反馈 · 帮助中心</DD></DL></DIV></BODY></HTML>
