<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="border fixed split-nav">
  <div class="nav-brand">
    <h3><a href="${pageContext.request.contextPath}/">메모리폼</a></h3>
  </div>
  <div class="collapsible">
    <input id="collapsible1" type="checkbox" name="collapsible1">
    <label for="collapsible1">
      <c:choose>
        <c:when test="${sessionScope.result.email eq null}">
          <div class="bar1">회원등록</div>
          <div class="bar2">로그인</div>
        </c:when>
        <c:otherwise>
          <div class="bar1">${sessionScope.result.nm} 고객님</div>
          <div class="bar1">로그아웃</div>
        </c:otherwise>
      </c:choose>
    </label>
    <div class="collapsible-body">
      <ul class="inline">
        <c:choose>
          <c:when test="${sessionScope.result.email eq null}">
            <li><a href="${pageContext.request.contextPath}/member/joinForm">회원등록</a></li>
            <li><a href="${pageContext.request.contextPath}/member/loginForm">로그인</a></li>
          </c:when>
          <c:otherwise>
            <li><a href="${pageContext.request.contextPath}/user/userProposal">${sessionScope.result.nm}
              고객님</a></li>
            <li><a href="${pageContext.request.contextPath}/member/logoutMember">로그아웃</a></li>
          </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>