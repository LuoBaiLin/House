package interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import entity.users;

@SuppressWarnings("serial")
public class AuthorizationInterceptor extends AbstractInterceptor {
	/**
	 * �����������ط���
	 */
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//��ȡ�ػ���Ϣ
		@SuppressWarnings("rawtypes")
		Map session=invocation.getInvocationContext().getSession();
		users user=(users) session.get("login");
		if(user==null){
			//��ִֹ�У����ص�¼ҳ��
			return Action.LOGIN;
		}else{
			//����ִ��ʣ���Action��������
			return invocation.invoke();
		}
	}

}
