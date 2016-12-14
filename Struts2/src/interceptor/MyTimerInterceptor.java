package interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class MyTimerInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//1.ִ��Action֮ǰ�Ĺ�������ȡ��ʼִ��ʱ��
		long startTime=System.currentTimeMillis();
		System.out.println("ִ��Action֮ǰ�Ĺ�������ʼʱ�䣺"+startTime);
		//ִ�к�����������Action
		String result=invocation.invoke();
		//ִ��Action��Ĺ������������ִ��ʱ��
		long endTime=System.currentTimeMillis();
		long exeTime=endTime-startTime;
		System.out.println("ִ��Action��Ĺ���,����ʱ�䣺"+endTime);
		System.out.println("�ܹ���ʱ��"+exeTime);
		return result;
	}

}
