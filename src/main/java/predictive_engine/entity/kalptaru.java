package predictive_engine.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "kalptaru")
public class kalptaru {
	@Id
	@Column(name = "column1")
	String column1;
	public kalptaru() {
		// TODO Auto-generated constructor stub
	}
	public kalptaru(String column1) {
		super();
		this.column1 = column1;
	}
	public String getColumn1() {
		return column1;
	}
	public void setColumn1(String column1) {
		this.column1 = column1;
	}
	

}
