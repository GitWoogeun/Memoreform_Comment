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
          <%--          <div class="title">--%>
          <%--            <div class="row flex-edges">--%>
          <%--              <div class="text-center">--%>
          <%--                <h1>QnA</h1>--%>
          <%--              </div>--%>
          <%--            </div>--%>
          <%--          </div>--%>
          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <div class="section">
            <jsp:include page="../common/nav.jsp"/>

            <div class="row flex-spaces tabs">
              <input id="tab1" type="radio" name="tabs" checked="">
              <label for="tab1">이용자 조회</label>
              <input id="tab2" type="radio" name="tabs">
              <label for="tab2">전문가 조회</label>
              <input id="tab3" type="radio" name="tabs">
              <label for="tab3"></label>
              <div class="content" id="content1">
                <p>
               1
                </p>
              </div>
              <div class="content" id="content2">
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

              <div class="content" id="content3">
                <p>
             3
                </p>
              </div>

            </div>


          </div>
        </div>
      </div>
    </div>
  </body>
</html>