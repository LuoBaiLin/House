package interceptor;

import java.util.Map;

import struts.LoginAction;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor{

	  /**
     * 当未登录时候 跳转到login.jsp，不进去其他action处理
     */
	@Override
	public String intercept(ActionInvocation inv) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> session = 
				inv.getInvocationContext().getSession();
		//查看是否登录 即获取session里是否有用户信息
		//拦截器不拦截 LoginAction相关信息
		if(isLoginAction((ActionSupport)inv.getAction()) 
				|| session.containsKey("user")){
			return inv.invoke();// 如果已登录，继续执行相应action的逻辑
		}else{//未登录 应该调到input
			return "input";
		}
	}
	//验证是否登录的action
  public boolean isLoginAction(ActionSupport action){
	 //判断action是否为LoginAction的实例
	   if(action instanceof LoginAction){
		   return true;
	   }
	   return false;
  }
}
