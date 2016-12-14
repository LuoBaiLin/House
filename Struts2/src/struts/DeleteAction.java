package struts;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import dao.houseDao;
import dao.impl.houseDaoImpl;

@SuppressWarnings("serial")
public class DeleteAction extends ActionSupport implements Action {
	private Long houseId;
	public Long getHouseId() {
		return houseId;
	}

	public void setHouseId(Long houseId) {
		this.houseId = houseId;
	}

	@Override
	public String execute() throws Exception {
		houseDao housedao=new houseDaoImpl();
		int result=housedao.deleteById(houseId);
		System.out.println(houseId);
		System.out.println(result);
		if(result>0){
			return "success";
		}else{
			return "input";
		}
		
	}
}
