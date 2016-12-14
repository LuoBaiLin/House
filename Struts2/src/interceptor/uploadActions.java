package interceptor;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 多文件上传
 * @author LuoBaiLin
 *2016-11-26
 */
@SuppressWarnings("serial")
public class uploadActions extends ActionSupport{
		//获取提交的几个文件
		private File[] upload;
		//封装上传文件类型
		private String[] uploadContentType;
		//封装上传文件名称
		private String[] uploadFileName;
		//封装上传文件的路径
		private String savePath;
		@Override
		public String execute()throws Exception{
			byte[] buffer=new byte[1024];
			for (int i = 0; i < upload.length; i++) {
				//读取文件
				FileInputStream fis=new FileInputStream(getUpload()[i]);
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
			}
			return "success";
		}
		
		public String getSavePath() {
			return ServletActionContext.getServletContext().getRealPath(savePath);
		}

		public void setSavePath(String savePath) {
			this.savePath = savePath;
		}

		public File[] getUpload() {
			return upload;
		}
		public void setUpload(File[] upload) {
			this.upload = upload;
		}
		public String[] getUploadContentType() {
			return uploadContentType;
		}
		public void setUploadContentType(String[] uploadContentType) {
			this.uploadContentType = uploadContentType;
		}
		public String[] getUploadFileName() {
			return uploadFileName;
		}
		public void setUploadFileName(String[] uploadFileName) {
			this.uploadFileName = uploadFileName;
		}
		
}
