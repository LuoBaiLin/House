package entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

//import javax.persistence.*;

//@Entity
//@Table(name="DISTRICT")
public class district implements Serializable {
	private static final long serialVersionUID = 1L;
//	@Id
//	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq_district")
//	@SequenceGenerator(name="seq_district",sequenceName="house_district_id")
	private Short id;//����id
//	@Column(name="NAME")
	private String name;//��������
//	@OneToMany(mappedBy="dis",cascade={CascadeType.ALL})
	private Set<street> streets = new HashSet<street>();
	
	
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
	
	public Set<street> getStreets() {
		return streets;
	}
	public void setStreets(Set<street> streets) {
		this.streets = streets;
	}
	public district(Short id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public district(Short id, String name, Set<street> streets) {
		this.id = id;
		this.name = name;
		this.streets = streets;
	}
	
	public district(String name) {
		this.name = name;
	}
	public district() {}
	public district(Short id) {
		this.id = id;
	}
	
}
