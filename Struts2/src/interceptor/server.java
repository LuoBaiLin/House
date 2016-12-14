package interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.usersDao;
import dao.impl.usersDaoImpl;
import entity.users;

public class server extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String name=request.getParameter("name");
		usersDao userdao=new usersDaoImpl();
		users user=userdao.selectByName(name);
		if(user!=null){//����û�����
			 out.write("false");
		}else{
			 out.write("true");
		}
		out.flush();
		out.close();
	}

}
