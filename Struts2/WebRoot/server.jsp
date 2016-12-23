<%@page import="entity.users"%>
<%@page import="dao.impl.usersDaoImpl"%>
<%@page import="dao.usersDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%


/* 		用户注册验证
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		usersDao userdao=new usersDaoImpl();
		users user=userdao.selectByName(name);
		if(user!=null){//如果用户存在
			 out.write("false");
		}else{
			 out.write("true");
		}
		
		if("Berlin@qq.com".equals(email)){
			out.print("{\"flag\":true,\"message1\":\"<font color='red'>该邮箱已注册</font>\"}");
		}else{
			out.print("{\"flag\":false,\"message1\":\"<font color='red'>该邮箱可使用</font>\"}");
		} */
%>