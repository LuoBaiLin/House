package struts;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import dao.houseDao;

import dao.impl.houseDaoImpl;
import entity.house;
import entity.houseTemp;

@SuppressWarnings("serial")
public class ListAction extends ActionSupport implements Action{
	private String title="";
	private Short types=1001;
	private Short streets=1001;
	private String Price="0-200";
	private String Floorrage="0-200";
	private int pageIndex=1;

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Short getTypes() {
		return types;
	}

	public void setTypes(Short types) {
		this.types = types;
	}

	public Short getStreets() {
		return streets;
	}

	public void setStreets(Short streets) {
		this.streets = streets;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}

	public String getFloorrage() {
		return Floorrage;
	}

	public void setFloorrage(String floorrage) {
		Floorrage = floorrage;
	}


	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(title==null){
			title = "";
		}
		session.setAttribute("title", title);
		session.setAttribute("types", types);
		session.setAttribute("streets", streets);
		session.setAttribute("Price", Price);
		session.setAttribute("Floorrage", Floorrage);
		
		String[] price = Price.split("-");
		Double firstPrice = Double.parseDouble(price[0]);
		Double lastPrice = Double.parseDouble(price[1]);
		
		String[] floorrage = Floorrage.split("-");
		Double firstFloorrage = Double.parseDouble(floorrage[0]);
		Double lastFloorrage = Double.parseDouble(floorrage[1]);
		
		houseTemp houseTp = new houseTemp(firstPrice, lastPrice, streets, types, firstFloorrage, lastFloorrage);
		houseTp.setTitle(title);
		houseDao houseDao = new houseDaoImpl();
		int totalPageCount = houseDao.pageCount(houseTp);
		session.setAttribute("pageTotal", totalPageCount);
		session.setAttribute("pageIndex", pageIndex);
		List<house> pagehouse = houseDao.selectByLike(houseTp, pageIndex);
		session.setAttribute("pagehouse", pagehouse);
		return "success";
	}
}
