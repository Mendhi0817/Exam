<!-- page,includeでimportを行う -->
<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.io.PrintWriter"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "tool.Page" %>
<%@ page import = "javax.naming.InitialContext" %>
<%@ page import = "javax.sql.DataSource" %>
<%@include file="../header.html" %>

<div id = "context">
<%
response.setContentType("text/html; charset=UTF-8");
PrintWriter ot=response.getWriter();
Page.header(ot);
//連携させたいDBを選択する
try {
	InitialContext ic=new InitialContext();
	DataSource ds=(DataSource)ic.lookup(
		"java:/comp/env/jdbc/exam");
	Connection con=ds.getConnection();


//SQL文で選択するDBを選ぶ
	PreparedStatement st=con.prepareStatement(
			"SELECT * FROM STUDENT");
	ResultSet rs=st.executeQuery();
	rs.next();


	//SQL文で選択するDBを選ぶ


	rs=st.executeQuery();


	out.println("<p>追加する学生の情報を入力してください。</p>");
	out.println("<form method=\"insert\" action=\"Student_create_done.jsp\">");

	out.println("学生番号　：<input type=\"text\" name=\"id\"><br>");
	out.println("氏名　：<input type=\"text\" name=\"name\"><br>");
	out.println("入学年度　：<select name =\"ent_year\"><br>");
	out.println("<option value = \"2020\">2020</option>");
	out.println("<option value = \"2021\">2021</option>");
	out.println("<option value = \"2022\">2022</option>");
	out.println("<option value = \"2023\">2023</option>");
	out.println("<option value = \"2024\">2024</option>");
	out.println("</select><br>");



	out.println("クラス　：<select name =\"class_num\">");
	out.println("<option value = \"101\">101</option>");
	out.println("<option value = \"102\">102</option>");
	out.println("<option value = \"201\">201</option>");
	out.println("<option value = \"202\">202</option>");

	out.println("</select><br>");
	out.println("<input type=\"submit\" value=\"送信\">");
	out.println("</form>");



	st.close();
	con.close();
}catch (Exception e) {
	e.printStackTrace(ot);
}
Page.footer(ot);



%>

</div>

<%@include file="../footer.html" %>