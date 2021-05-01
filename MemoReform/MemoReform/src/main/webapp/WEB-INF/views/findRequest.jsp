<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://unpkg.com/papercss@1.8.2/dist/paper.min.css">
    <link rel="stylesheet" href="../../resources/css/style.css"/>
    <title>메모리폼</title>
  </head>
  <body>
    <div class="paper container">
      <jsp:include page="common/nav.jsp"/>

      <div class="text-center">
        <h4>의뢰서 찾기</h4>
      </div>

      <div class="row">
        <div class="col-6 col">
          <div class="card" style="width: 20rem;">
            <div class="card-body">
              <h4 class="card-title">My awesome Paper card!</h4>
              <h5 class="card-subtitle">Nice looking subtitle.</h5>
              <p class="card-text">Notice that the card width in this example have been set to
                20rem,
                otherwise it will try to fill the current container/row where the card is.</p>
              <button>Let me go here!</button>
            </div>
          </div>
        </div>
        <div class="col-6 col">
          <div class="card" style="width: 20rem;">
            <div class="card-body">
              <h4 class="card-title">My awesome Paper card!</h4>
              <h5 class="card-subtitle">Nice looking subtitle.</h5>
              <p class="card-text">Notice that the card width in this example have been set to
                20rem,
                otherwise it will try to fill the current container/row where the card is.</p>
              <button>Let me go here!</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>