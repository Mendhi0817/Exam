package bean;

import java.io.Serializable;

public class TestListSubjectDao extends User implements Serializable {

	private String baseSql;



	public String getBaceSql(){
		return baseSql;
	}
	public void setBaceSql(String baseSql){
		this.baseSql = baseSql;
	}
}
