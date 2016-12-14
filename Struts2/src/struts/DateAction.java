package struts;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DateAction extends ActionSupport {
	private Date currentDate;
	
	public String execute(){
		currentDate=new Date();
		return SUCCESS;
	}
	public Date getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(Date currentDate) {
		this.currentDate = currentDate;
	}
	
}
