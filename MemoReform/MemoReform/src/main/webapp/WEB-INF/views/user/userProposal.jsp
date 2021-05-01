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
                <h1>받은 견적</h1>
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
                  <th>의뢰서 번호</th>
                  <th>전문가 번호</th>
                  <th>제목</th>
                  <th>내용</th>
                  <th>견적금액</th>
                  <th>상태</th>
                  <th>등록일</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${proposalList}" var="proposal">
                  <tr>
                    <td>${proposal.rqstdocNo}</td>
                    <td>${proposal.expertNm}</td>
                    <td>${proposal.sj}</td>
                    <td>${proposal.cn}</td>
                    <td>${proposal.estmt}</td>
                    <td>${proposal.sttus}</td>
                    <td>${proposal.rgsde}</td>
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