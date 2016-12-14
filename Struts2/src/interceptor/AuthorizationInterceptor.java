package interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import entity.users;

@SuppressWarnings("serial")
public class AuthorizationInterceptor extends AbstractInterceptor {
	/**
	 * 拦截器的拦截方法
	 */
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//获取回话信息
		@SuppressWarnings("rawtypes")
		Map session=invocation.getInvocationContext().getSession();
		users user=(users) session.get("login");
		if(user==null){
			//终止执行，返回登录页面
			return Action.LOGIN;
		}else{
			//继续执行剩余的Action和拦截器
			return invocation.invoke();
		}
	}

}
