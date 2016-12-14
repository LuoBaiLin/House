package interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class MyTimerInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//1.执行Action之前的工作，获取开始执行时间
		long startTime=System.currentTimeMillis();
		System.out.println("执行Action之前的工作，开始时间："+startTime);
		//执行后续拦截器或Action
		String result=invocation.invoke();
		//执行Action后的工作，技术输出执行时间
		long endTime=System.currentTimeMillis();
		long exeTime=endTime-startTime;
		System.out.println("执行Action后的工作,结束时间："+endTime);
		System.out.println("总共用时："+exeTime);
		return result;
	}

}
