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
                <h1>의뢰서 내역</h1>
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
                <th>작성자</th>
                <th>작성일</th>
                <th>조회</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${qnaList}" var="qna">
                <tr>
                  <td>${qna.no}</td>
                  <td><a href="qnaDetail?no=${qna.no}">${qna.sj}</a></td>
                  <td>${qna.nm}</td>
                  <td>${qna.rgsde}</td>
                  <td>${qna.co}</td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
            <button onclick="location.href='qnaForm'">글쓰기</button>

          </div>
        </div>
      </div>
    </div>
  </body>
</html>