<%-- 科目情報登録完了 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/common/base.jsp">
    <c:param name="title">
        科目登録完了
    </c:param>

    <c:param name="scripts"></c:param>

    <c:param name="content">
        <section class="mo-4">
            <h2 class="h2 mb-3" style="background-color: #f2f2f2; padding: 10px;">科目情報登録</h2>
            <div class="label" style="color: black; background-color: green; text-align: center;">登録が完了しました。</div>
            <div class="d-flex justify-content-center mt-3">
                <div class="me-3">
                    <a href="SubjectManagement.action">戻る</a>
                </div>
                <div>
                    <a href="SubjectRegister.action">科目登録画面に戻る</a>
                </div>
            </div>
        </section>
    </c:param>
</c:import>


