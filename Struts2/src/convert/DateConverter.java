package convert;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.opensymphony.xwork2.conversion.TypeConversionException;

public class DateConverter extends StrutsTypeConverter{
	//支持转换的多种 期格式
	private final DateFormat[] dfs={
			new SimpleDateFormat("yyyy/MM/dd"),
			new SimpleDateFormat("yyyy年MM月dd日 "),
			new SimpleDateFormat("yyyy-MM-dd"),
			
			new SimpleDateFormat("yyyy.MM.dd")
	};
	/**
	 * 将指定格式字符串转换为日期字符
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
		//遍历完成后没有转换成功，表明出现异常
		throw new TypeConversionException();
	}
	/**
	 * 将日期转换为指定格式字符串
	 */
	@Override
	public String convertToString(Map context, Object obj) {
		Date date=(Date) obj;
		//输出格式为yyyy-MM-dd
		return new SimpleDateFormat("yyyy年MM月dd日").format(date);
	}

}
