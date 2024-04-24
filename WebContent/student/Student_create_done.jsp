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

request.setCharacterEncoding("UTF-8");
String id=request.getParameter(request.getParameter("id"));
String name=request.getParameter("name");
int ent_year = Integer.parseInt(request.getParameter("ent_year"));
String class_num=request.getParameter("class_num");


response.setContentType("text/html; charset=UTF-8");
PrintWriter ot=response.getWriter();
Page.header(ot);
try {
	InitialContext ic=new InitialContext();
	DataSource ds=(DataSource)ic.lookup(
		"java:/comp/env/jdbc/exam");
	Connection con=ds.getConnection();

	//追加したものをDBにぶちこむ
	PreparedStatement st=con.prepareStatement(
		"insert into STUDENT values(?, ?, ?,?,true,\'tes\')");
	st.setString(1, id);
	st.setString(2, name);
	st.setInt(3, ent_year);
	st.setString(4, class_num);

	//データを変更するSQL文を実行する
	int line=st.executeUpdate();

	//特に何もなければ成功と表示する
	if (line>0) {
		out.println("追加に成功しました。");
	}

	//afads

	st.close();
	con.close();
} catch (Exception e) {
	e.printStackTrace(ot);
}
Page.footer(ot);



%>

</div>

<%@include file="../footer.html" %>