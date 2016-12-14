package interceptor;

import java.util.Map;

import struts.LoginAction;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor{

	  /**
     * ��δ��¼ʱ�� ��ת��login.jsp������ȥ����action����
     */
	@Override
	public String intercept(ActionInvocation inv) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> session = 
				inv.getInvocationContext().getSession();
		//�鿴�Ƿ��¼ ����ȡsession���Ƿ����û���Ϣ
		//������������ LoginAction�����Ϣ
		if(isLoginAction((ActionSupport)inv.getAction()) 
				|| session.containsKey("user")){
			return inv.invoke();// ����ѵ�¼������ִ����Ӧaction���߼�
		}else{//δ��¼ Ӧ�õ���input
			return "input";
		}
	}
	//��֤�Ƿ��¼��action
  public boolean isLoginAction(ActionSupport action){
	 //�ж�action�Ƿ�ΪLoginAction��ʵ��
	   if(action instanceof LoginAction){
		   return true;
	   }
	   return false;
  }
}
