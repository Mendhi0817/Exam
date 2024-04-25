<%-- 科目情報変更 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/common/base.jsp">
    <c:param name="title">
        科目情報変更
    </c:param>

    <c:param name="scripts"></c:param>

    <c:param name="content">
        <section class="mo-4">
            <h2 class="h2 mb-3" style="background-color: #f2f2f2; padding: 10px;">科目情報変更</h2>
            <div class="mb-3">
                <label for="code" class="form-label">科目コード</label>
                <input type="text" class="form-control" id="code" name="code" value="${code}" readonly>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">科目名</label>
                <input type="text" class="form-control" id="name" name="name" value="${name}" maxlength="20" required placeholder="科目名を入力してください" style="color: #666;">
                <div class="error-message" id="name-error">${nameError}</div>
            </div>
            <button type="submit" class="btn btn-primary rounded-pill" style="background-color: #007bff; color: white;">変更</button>
            <div class="mt-3">
                <a href="SubjectManagement.action">戻る</a>
            </div>
        </section>
        <div class="error-message" id="general-error">${generalError}</div>
    </c:param>
</c:import>

