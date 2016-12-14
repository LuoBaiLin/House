package struts;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.Action;

import dao.houseDao;
import dao.impl.houseDaoImpl;

import entity.district;
import entity.house;
import entity.street;
import entity.types;
import entity.users;

public class UpdateAction implements Action{
	private List<types> listType;
	private List<district> listDis;
	private List<street> listStr;
	private String houseId="";
	private String message = "";
	private String houseDate = "";
	private String title = "";
	private String type_id = "";
	private String floorage = "";
	private String price = "";
	private String street_id = "";
	private String contact = "";
	private String description = "";
	private String isupdate = null;
	private users userLogin;
	
	public String getHouseId() {
		return houseId;
	}
	public void setHouseId(String houseId) {
		this.houseId = houseId;
	}
	public List<types> getListType() {
		return listType;
	}
	public void setListType(List<types> listType) {
		this.listType = listType;
	}
	public List<district> getListDis() {
		return listDis;
	}
	public void setListDis(List<district> listDis) {
		this.listDis = listDis;
	}
	public List<street> getListStr() {
		return listStr;
	}
	public void setListStr(List<street> listStr) {
		this.listStr = listStr;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getHouseDate() {
		return houseDate;
	}
	public void setHouseDate(String houseDate) {
		this.houseDate = houseDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	public String getFloorage() {
		return floorage;
	}
	public void setFloorage(String floorage) {
		this.floorage = floorage;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStreet_id() {
		return street_id;
	}
	public void setStreet_id(String street_id) {
		this.street_id = street_id;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getIsupdate() {
		return isupdate;
	}
	public void setIsupdate(String isupdate) {
		this.isupdate = isupdate;
	}
	public users getUserLogin() {
		return userLogin;
	}
	public void setUserLogin(users userLogin) {
		this.userLogin = userLogin;
	}
	@Override
	public String execute() throws Exception {
		houseDao houseDaos = new houseDaoImpl();
		types typess = new types(Short.parseShort(type_id));
		street streets = new street(Short.parseShort(street_id));
		DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		long houseid=Long.parseLong(houseId);
		try {
			date = format1.parse(houseDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
			house hou = new house();
			hou.setId(houseid);
			hou.setContact(contact);
			hou.setDescription(description);
			hou.setFloorrage(Double.parseDouble(floorage));
			hou.setPrice(Double.parseDouble(price));
			hou.setPubdate(date);
			hou.setStreet(streets);
			hou.setTitle(title);
			hou.setTypes(typess);
			int result = houseDaos.update(hou);
			if(result>0){
				return "success";
			}else{
				this.setMessage("房屋信息修改失败！");
				return "input";
			}
		}
}
