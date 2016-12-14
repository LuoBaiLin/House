package interceptor;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class uploadAction  extends ActionSupport{
	//��װ�ϴ��ļ�����
	private File upload;
	//��װ�ϴ��ļ�����
	private String uploadContentType;
	//��װ�ϴ��ļ�����
	private String uploadFileName;
	//��װ�ϴ��ļ���·��
	private String savePath;
	
	@Override
	public String execute()throws Exception{
		byte[] buffer=new byte[1024];
		//��ȡ�ļ�
		FileInputStream fis=new FileInputStream(getUpload());
		//�����ļ������ñ���Ŀ¼·��
		FileOutputStream fos=new FileOutputStream(getSavePath()+"\\"+this.getUploadFileName());
		int length=fis.read(buffer);
		while(length>0) {
			//ÿ��д��length���ȵ�����
			fos.write(buffer, 0, length);
			length=fis.read(buffer);
		}
		fis.close();
		fos.flush();
		fos.close();
		return "success";
	}
	//��ȡ�ϴ��ļ��ı���·��
	//ͨ����ȡ���Ŀ¼��ñ���·��
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
