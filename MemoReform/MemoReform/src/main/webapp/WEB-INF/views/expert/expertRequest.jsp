<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <%-- 상단 제목 --%>
          <div class="title">
            <div class="row flex-edges">
              <div class="text-center">
                <h1>의뢰서 보기</h1>
              </div>
            </div>
          </div>
          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <div class="section">
            <jsp:include page="../common/nav.jsp"/>
            <table>
              <thead>
              <tr>
                <th></th>
                <th>범주</th>
                <th>제목</th>
                <th>작성일</th>
                <th>진행상항</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${requestList}" var="request">
                <tr>
                  <td>${request.no}</td>
                  <td>${request.ctgry}</td>
                  <td><a href="qnaDetail?no=${request.no}">${request.sj}</a></td>
                  <td>${request.rgsde}</td>
                  <td>${request.sttus}</td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>