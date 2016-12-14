package struts;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import dao.*;
import dao.impl.*;

import entity.*;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport implements Action{
	private String name = "";
	private String password = "";
	private String message;
	public void validate(){
		if(this.getName().length()==0||"".equals(this.getName())){
			addFieldError("name", "用户名不能为空");
		}
		if(this.getPassword().length()==0||"".equals(this.getPassword())){
			addFieldError("pwd", "密码不能为空");
		}
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String execute() throws Exception {
		users user = new users(name, password);
		
		usersDao userDao = new usersDaoImpl();
		users userLogin = userDao.selectByLogin(user);
		
		HttpSession session=ServletActionContext.getRequest().getSession();
		if(userLogin == null){
			session.setAttribute("loginMessage","用户名或密码错误！");
			return "input";
		}else{
			session.setAttribute("loginUsers", userLogin);
			return "success";
		}
	}
}
