package entity;

import java.io.Serializable;
//import java.sql.Timestamp;
import java.util.Date;

//import javax.persistence.*;

//@Entity
//@Table(name="HOUSE")
public class house implements Serializable{

	private static final long serialVersionUID = 1L;
//	@Id
//	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_house")
//	@SequenceGenerator(name="seq_house",sequenceName="house_house_id")
	private Long id;//���ݱ��
	//���һ  
//	@ManyToOne
//	@JoinColumn(name="USER_ID")
	private users users;//�û�����
//	@ManyToOne
//	@JoinColumn(name="TYPE_ID")
	private types types;//���Ͷ���
//	@ManyToOne
//	@JoinColumn(name="STREET_ID")
	private street street;//�ֵ�����
//	@Column(name="TITLE")
	private String title;//����
//	@Column(name="DESCRIPTION")
	private String description;//����
//	@Column(name="PRICE")
	private Double price;//�۸�
//	@Column(name="PUBDATE")
	private Date pubdate;//��������
//	@Column(name="FLOORRAGE")
	private Double floorrage;//���
//	@Column(name="CONTACT")
	private String contact;//��ϵ��
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public users getUsers() {
		return users;
	}
	public void setUsers(users users) {
		this.users = users;
	}
	public types getTypes() {
		return types;
	}
	public void setTypes(types types) {
		this.types = types;
	}
	public street getStreet() {
		return street;
	}
	public void setStreet(street street) {
		this.street = street;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Date getPubdate() {
		return pubdate;
	}
	public void setPubdate(Date pubdate) {
		this.pubdate = pubdate;
	}
	public Double getFloorrage() {
		return floorrage;
	}
	public void setFloorrage(Double floorrage) {
		this.floorrage = floorrage;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public house() {}
	
	public house(entity.users users, entity.types types, entity.street street,
			String title, String description, Double price, Date pubdate,
			Double floorrage, String contact) {
		this.users = users;
		this.types = types;
		this.street = street;
		this.title = title;
		this.description = description;
		this.price = price;
		this.pubdate = pubdate;
		this.floorrage = floorrage;
		this.contact = contact;
	}
	
	public house(entity.users users, entity.types types, entity.street street,
			String title, String description, Double price, Double floorrage,
			String contact) {
		this.users = users;
		this.types = types;
		this.street = street;
		this.title = title;
		this.description = description;
		this.price = price;
		this.floorrage = floorrage;
		this.contact = contact;
	}
	public house(entity.users users, entity.types types, entity.street street) {
		this.users = users;
		this.types = types;
		this.street = street;
	}
	public house(Long id, entity.users users, entity.types types,
		entity.street street, String title, String description, Double price,
		Date pubdate, Double floorrage, String contact) {
	this.id = id;
	this.users = users;
	this.types = types;
	this.street = street;
	this.title = title;
	this.description = description;
	this.price = price;
	this.pubdate = pubdate;
	this.floorrage = floorrage;
	this.contact = contact;
}
}
