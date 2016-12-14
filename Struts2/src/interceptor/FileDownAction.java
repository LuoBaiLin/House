package interceptor;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 下载文件
 * @author LuoBaiLin
 *	2016-11-26
 */
@SuppressWarnings("serial")
public class FileDownAction extends ActionSupport {
	//读取下载文件目录
	private String inputPath;
	//下载文件的文件名
	private String fileName;
	//读取下载文件的输入流
	private InputStream inputStream;
	//下载文件类型
	private String contentType;
	
	public String getInputPath() {
		return inputPath;
	}
	public void setInputPath(String inputPath) {
		this.inputPath = inputPath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public InputStream getInputStream()throws FileNotFoundException {
		String path=ServletActionContext.getServletContext().getRealPath(inputPath);
		return new BufferedInputStream(new FileInputStream(path+"\\"+fileName));
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	@Override
	public String execute()throws Exception{
		System.out.println(fileName);
		System.out.println(inputStream);
		return "success";
	}
}
