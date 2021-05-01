<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://unpkg.com/papercss@1.8.2/dist/paper.min.css">
    <link rel="stylesheet" href="../../../resources/css/style.css"/>
    <title>메모리폼</title>
  </head>
  <body>
    <div class="paper container">
      <jsp:include page="../common/nav.jsp"/>

      <div class="text-center">
        <h4>마이페이지</h4>
      </div>

      <div class="row flex-center">
        <div class="row flex-center">
          <div class="card" style="width: 20rem;">
            <div class="card-body">
              <h4 class="card-title">탁우근 고객님</h4>
              <h5 class="card-subtitle">example@memoreform.com</h5>
              <button>의뢰내역</button>
              <button>공지사항</button>
            </div>
          </div>
        </div>
      </div>
      <hr>
    </div>
  </body>
</html>