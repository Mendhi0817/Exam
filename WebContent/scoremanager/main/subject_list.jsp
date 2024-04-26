<%-- 科目管理一覧JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/common/base.jsp">
    <c:param name="title">
        得点管理システム
    </c:param>

    <c:param name="scripts"></c:param>

    <c:param name="content">
        <section class="mo-4">
            <h2 class="h2 mb-3" style="background-color: #f2f2f2; padding: 10px;">科目管理</h2>
            <div class="my-2 text-end px-4">
                <a href="SubjectCreate.action">新規登録</a>
            </div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>科目コード</th>
                        <th>科目名</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="科目情報" items="${科目情報リスト}">
                        <tr>
                            <td>${科目情報.科目コード}</td>
                            <td>${科目情報.科目名}</td>
                            <td><a href="SubjectUpdate.action?code=${科目情報.科目コード}">変更</a></td>
                            <td><a href="SubjectDelete.action?code=${科目情報.科目コード}">削除</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>
    </c:param>
</c:import>
//koko

