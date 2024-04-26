package bean;

import java.io.Serializable;

public class TestListStudentDao extends User implements Serializable {

	private String baseSql;



	public String getbaceSql(){
		return baseSql;
	}
	public void setBaceSql(String baseSql){
		this.baseSql = baseSql;
	}
}
