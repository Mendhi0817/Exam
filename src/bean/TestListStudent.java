package bean;

import java.io.Serializable;

public class TestListStudent extends User implements Serializable {

	private String subjectName;
	private String subjectCd;
	private int num;
	private int point;

	public String getsubjectName(){
		return subjectName;
	}
	public void setSubjectName(String subjectName){
		this.subjectName = subjectName;
	}

	public String getsubjectCd(){
		return subjectCd;
	}
	public void setSubjectCd(String subjectCd){
		this.subjectCd = subjectCd;
	}

	public int getnum(){
		return num;
	}
	public void setNum(int num){
		this.num = num;
	}

	public int getpoint(){
		return point;
	}
	public void setPoint(int point){
		this.point = point;
	}
}
