package struts;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class uploadAction  extends ActionSupport{
	//封装上传文件属性
	private File upload;
	//封装上传文件类型
	private String uploadContentType;
	//封装上传文件名称
	private String uploadFileName;
	//封装上传文件的路径
	private String savePath;
	
	@Override
	public String execute()throws Exception{
		byte[] buffer=new byte[1024];
		//读取文件
		FileInputStream fis=new FileInputStream(getUpload());
		//保存文件，设置保存目录路径
		FileOutputStream fos=new FileOutputStream(getSavePath()+"\\"+this.getUploadFileName());
		int length=fis.read(buffer);
		while(length>0) {
			//每次写入length长度的内容
			fos.write(buffer, 0, length);
			length=fis.read(buffer);
		}
		fis.close();
		fos.flush();
		fos.close();
		return "success";
	}
	//获取上传文件的保存路径
	//通过读取存放目录获得保存路径
	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
}	

