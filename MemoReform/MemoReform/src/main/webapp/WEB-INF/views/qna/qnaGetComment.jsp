<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <jsp:include page="../common/header.jsp"/>
    <meta charset="UTF-8">
    <title>댓글 수정 페이지</title>
  </head>
  <body>
    <div style="width: 500px; margin: 0 auto">
      <h1>댓글을 수정해 주세요</h1>
      <hr>
      <form action="updateComment" method="post">
        <input name="no" type="hidden" value="${qna.no}"/>
        <textarea name="cn" rows="7px" cols="0" style="width: 500px; height: 100px" placeholder="수정할 내용을 입력해주세요"></textarea><br>
        <input type="submit" value="수정하기" style="float: right"/>
      </form>
    </div>
  </body>
</html>
