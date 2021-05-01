<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="common/header.jsp"/>
  <body>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <%-- 상단 제목 --%>
          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <h1>메모리폼</h1>
                <h3>리폼의 전문가를 찾아드려요</h3>
              </div>
            </div>
          </div>
          <%-- 상단 목록 --%>
          <div class="row flex-center child-borders">
            <a class="paper-btn margin current" href="#">의류</a>
            <a class="paper-btn margin" href="#">가구</a>
            <a class="paper-btn margin" href="#">가죽</a>
            <a class="paper-btn margin" href="#">가전</a>
          </div>
          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <!-- 내용 -->
          <div class="section">
            <jsp:include page="common/nav.jsp"/>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>