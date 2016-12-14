package struts;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
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
public class GuanliAction extends ActionSupport implements Action {

	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		houseDao houseDao = new houseDaoImpl();
		users userLogin = (users)session.getAttribute("loginUsers");
		typesDao typeDao = new typesDaoImpl();
		List<types> listType = typeDao.selectAll();
		session.setAttribute("listType", listType);
		districtDao disDao = new districtDaoImpl();
		List<district> listDis = disDao.selectAll();
		session.setAttribute("listDis", listDis);
		streetDao strDao = new streetDaoImpl();
		List<street> listStr = strDao.selectAll();
		session.setAttribute("listStr", listStr);
		List<house> listUhouse = houseDao.selectByUId(userLogin);
		session.setAttribute("listUhouse", listUhouse);
		return "success";
	}

}
