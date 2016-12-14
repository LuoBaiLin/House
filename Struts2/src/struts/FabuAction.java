package struts;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.districtDao;
import dao.houseDao;
import dao.streetDao;
import dao.typesDao;

import dao.impl.districtDaoImpl;
import dao.impl.houseDaoImpl;
import dao.impl.streetDaoImpl;
import dao.impl.typesDaoImpl;
import entity.district;
import entity.house;
import entity.street;
import entity.types;
import entity.users;

@SuppressWarnings("serial")
public class FabuAction extends ActionSupport implements Action{
	private List<types> listType;
	private List<district> listDis;
	private List<street> listStr;
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
	public void validate(){
		boolean isAll = true;
		if(this.getTitle().trim().length()==0){
			isAll = false;
		}
		if(this.getType_id().trim().length()==0){
			isAll = false;
		}
		if(this.getFloorage().trim().length()==0){
			isAll = false;
		}
		if(this.getPrice().trim().length()==0){
			isAll = false;
		}
		try {
			Double.parseDouble(floorage);
		} catch (Exception e) {
			addFieldError("f", "�����������Ϊ���֣�");
		}
		try {
			Double.parseDouble(price);
		} catch (Exception e) {
			addFieldError("p", "���ݼ۸����Ϊ���֣�");
		}
		if(this.getHouseDate().trim().length()==0){
			isAll = false;
		}
		if(this.getStreet_id().trim()=="0"){
			isAll = false;
		}
		if(this.getContact().trim().length()==0){
			isAll = false;
		}
		if(this.getDescription().trim().length()==0){
			isAll = false;
		}
		if(!isAll){
			addFieldError("all", "������������Ϣ��");
		}
		typesDao typeDao = new typesDaoImpl();
		listType = typeDao.selectAll();
		districtDao disDao = new districtDaoImpl();
		listDis = disDao.selectAll();
		streetDao strDao = new streetDaoImpl();
		listStr = strDao.selectAll();
	}
	@Override
	public String execute() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		houseDao houseDaos = new houseDaoImpl();
		types typess = new types(Short.parseShort(type_id));
		street streets = new street(Short.parseShort(street_id));
		
		DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = format1.parse(houseDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String s = (String)session.get("isup");
		if(s==null){
			this.setIsupdate("no");
		}else{
			this.setIsupdate("yes");
		}
		users userLogin = (users)session.get("loginUsers");
		if(this.getIsupdate().equals("yes")){
			house hou = (house)session.get("uphouse");
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
				session.remove("isup");
				session.remove("uphouse");
				this.setUserLogin(userLogin);
				return "success";
			}else{
				this.setMessage("������Ϣ�༭ʧ�ܣ�");
				return "input";
			}
		}else{
			house houses = new house(userLogin, typess, streets, title, description, Double.parseDouble(floorage), date, Double.parseDouble(price), contact);
			int res = houseDaos.insert(houses);
			if (res == 1) {
				return "success";
			} else {
				this.setMessage("������Ϣ�༭ʧ�ܣ�");
				return "input";
			}
		}
	}
	
	
}
