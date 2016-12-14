package convert;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.opensymphony.xwork2.conversion.TypeConversionException;

public class DateConverter extends StrutsTypeConverter{
	//֧��ת���Ķ��� �ڸ�ʽ
	private final DateFormat[] dfs={
			new SimpleDateFormat("yyyy/MM/dd"),
			new SimpleDateFormat("yyyy��MM��dd�� "),
			new SimpleDateFormat("yyyy-MM-dd"),
			
			new SimpleDateFormat("yyyy.MM.dd")
	};
	/**
	 * ��ָ����ʽ�ַ���ת��Ϊ�����ַ�
	 */
	@Override
	public Object convertFromString(Map context, String[] values, Class toType) {
		String dateStr=values[0];
		for (int i = 0; i < dfs.length; i++) {
			try {
				return dfs[i].parse(dateStr);
			} catch (Exception e) {
				continue;
			}
		}
		//������ɺ�û��ת���ɹ������������쳣
		throw new TypeConversionException();
	}
	/**
	 * ������ת��Ϊָ����ʽ�ַ���
	 */
	@Override
	public String convertToString(Map context, Object obj) {
		Date date=(Date) obj;
		//�����ʽΪyyyy-MM-dd
		return new SimpleDateFormat("yyyy��MM��dd��").format(date);
	}

}
