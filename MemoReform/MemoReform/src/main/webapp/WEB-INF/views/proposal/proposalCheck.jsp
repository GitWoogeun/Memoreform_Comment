<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <div class="paper container">
      <jsp:include page="../common/nav.jsp"/>

      <div class="text-center">
        <h4>제안서를 작성하였습니다</h4>
        <a href="${pageContext.request.contextPath}/">
          <button class="btn-primary">메모리폼으로</button>
        </a>
      </div>

      <hr>
    </div>
  </body>
</html>