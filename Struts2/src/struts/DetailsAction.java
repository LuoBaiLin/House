package struts;


import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import dao.houseDao;
import dao.impl.houseDaoImpl;
import entity.house;

@SuppressWarnings("serial")
public class DetailsAction extends ActionSupport implements Action {
	private Long houseId;
	
	public Long getHouseId() {
		return houseId;
	}

	public void setHouseId(Long houseId) {
		this.houseId = houseId;
	}

	@Override
	public String execute() throws Exception {
		HttpSession session=ServletActionContext.getRequest().getSession();
		houseDao housedao=new houseDaoImpl();
		house house=housedao.selectById(houseId);
		session.setAttribute("houseDetailsList", house);
		return "success";
	}
}
