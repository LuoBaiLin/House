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
		if(users.getName().length()==0){addFieldError("name", "�û������ȱ�����6-15֮��");}
		if(users.getPassword().length()==0){addFieldError("password", "���벻��Ϊ��");}
	}
	
	public void validateRegister(){
		if(users.getName().length()<6 && users.getName().length()>15){addFieldError("name", "�û�������Ϊ��");}
		if(users.getPassword().length()<6){addFieldError("password", "���볤�Ȳ���С��6");}
		if(!repassword.equals(users.getPassword())){addFieldError("password", "�����������벻һ��");}
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
			session.setAttribute("resmessage","ע��ɹ���");
			return "success";
		}else{
			session.setAttribute("resmessage","ע��ʧ�ܣ�");
			return "input";
		}
	}

}
