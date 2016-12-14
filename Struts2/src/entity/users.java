package entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

//import javax.persistence.*;

//@Entity
//@Table(name="USERS")
@SuppressWarnings("serial")
public class users implements Serializable {
	
//	@Id
//	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_users")
//	@SequenceGenerator(name="seq_users",sequenceName="house_users_id")
	private Short id;//�û�id
//	@Column(name="NAME")
	private String name;//�û���
//	@Column(name="PASSWORD")
	private String password;//�û�����
//	@Column(name="TELEPHONE")
	private String telephone;//�绰��
//	@Column(name="USERNAME")
	private String username;//����
//	@Column(name="ISADMIN")
	private String isadmin;//�Ƿ��ǹ���Ա
//	@OneToMany(mappedBy="users",cascade={CascadeType.ALL})
	private Set<house> houses = new HashSet<house>();
	
	
	public Set<house> getHouses() {
		return houses;
	}
	public void setHouses(Set<house> houses) {
		this.houses = houses;
	}
	public Short getId() {
		return id;
	}
	public void setId(Short id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(String isadmin) {
		this.isadmin = isadmin;
	}
	public users(Short id, String name, String password, String telephone,
			String username, String isadmin) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.telephone = telephone;
		this.username = username;
		this.isadmin = isadmin;
	}
	public users() {}
	public users(String name, String password) {
		this.name = name;
		this.password = password;
	}
	
	public users(Short id, String name, String password, String telephone,
			String username, String isadmin, Set<house> houses) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.telephone = telephone;
		this.username = username;
		this.isadmin = isadmin;
		this.houses = houses;
	}
	public users(String name, String password, String telephone,
			String username) {
		this.name = name;
		this.password = password;
		this.telephone = telephone;
		this.username = username;
	}
	public users(Short id) {
		this.id = id;
	}
	

}
