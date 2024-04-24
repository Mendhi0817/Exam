package scoremanager.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Student;
import bean.Teacher;
import dao.ClassNumDao;
import dao.StudentDao;
import tool.Action;

public class StudentListAction extends Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception{

		HttpSession session = request.getSession();
		Teacher teacher = (Teacher)session.getAttribute("user");

		String entYearStr="";//入学年度
		String classNum = "";//クラス
		String isAttendStr = "";//在学フラグ
		int entYear  = 0;
		boolean isAttend = false;
		List<Student> students = null;
		StudentDao sDao = new StudentDao();
		ClassNumDao cNumDao = new ClassNumDao();
		Map<String, String> errors = new HashMap<>();

		entYearStr = request.getParameter("f1");

		classNum = request.getParameter("f2");
		isAttendStr = request.getParameter("f3");

		List<String> list = cNumDao.filter(teacher.getSchool());

		if (entYear != 0 && !classNum.equals("0")){
			students = sDao.filter(teacher.getSchool(),entYear, classNum, isAttend);
		}

		else if (entYear != 0 && classNum.equals("0")){
			students = sDao.filter(teacher.getSchool(), entYear,isAttend);
		}

		else if (entYear == 0 && classNum == null || entYear == 0 && classNum.equals("0")){
			students = sDao.filter(teacher.getSchool(), isAttend);
		}

		else {
			errors.put("f1","クラス指定の際、入学年度も入れてね");
			request.setAttribute("errors",errors);

			students = sDao.filter(teacher.getSchool(), isAttend);
		}

		if (entYearStr != null){
			entYear = Integer.parseInt(entYearStr);
		}

		List<Integer> entYearSet = new ArrayList<>();

		for (int i= entYear - 10; i < entYear + 1; i++){
			entYearSet.add(i);
		}

		request.setAttribute("f1", entYear);
		request.setAttribute("f2",classNum);

		if (isAttendStr != null){
			isAttend = true;

			request.setAttribute("f3",isAttendStr);

		}
		request.setAttribute("students",students);

		request.setAttribute("class_num_set",list);

		request.setAttribute("ent_year_set",entYearSet);

		request.getRequestDispatcher("student_manage.jsp");

		}



}
