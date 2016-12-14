package struts;


import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import dao.usersDao;

import dao.impl.usersDaoImpl;
import entity.users;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport implements Action {
	private users users;
	private String repassword="";
	public void validate(){
		if(users.getName().length()==0){addFieldError("name", "用户名长度必须在6-15之间");}
		if(users.getPassword().length()==0){addFieldError("password", "密码不能为空");}
	}
	
	public void validateRegister(){
		if(users.getName().length()<6 && users.getName().length()>15){addFieldError("name", "用户名不能为空");}
		if(users.getPassword().length()<6){addFieldError("password", "密码长度不能小于6");}
		if(!repassword.equals(users.getPassword())){addFieldError("password", "两次密码输入不一致");}
	}
	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public users getUsers() {
		return users;
	}

	public void setUsers(users users) {
		this.users = users;
	}
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		users user = new users(users.getName(), users.getPassword(), users.getTelephone(), users.getUsername());
		usersDao userDao = new usersDaoImpl();
		int result = userDao.insert(user);
		if(result==1){
			session.setAttribute("resmessage","注册成功！");
			return "success";
		}else{
			session.setAttribute("resmessage","注册失败！");
			return "input";
		}
	}

}
