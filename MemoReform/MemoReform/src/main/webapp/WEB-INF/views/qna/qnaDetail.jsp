<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<jsp:include page="../common/header.jsp"/>
<body>
<div id="top" class="row site">
    <div class="sm-12 col">
        <div class="paper">
            <!-- 탑 이동 -->
            <div class="to-top">
                <a href="#top" class="paper-btn margin">^</a>
            </div>
            <div class="section">
                <jsp:include page="../common/nav.jsp"/>
                <div class="row flex-center">
                    <div class="card" style="width: 20rem;">
                        <img src="https://picsum.photos/768" alt="Card example image">
                        <div class="card-body">
                            <h4 class="card-title">${qna.sj}</h4>
                            <h5 class="card-subtitle ">${qna.nm}</h5>
                            <h5 class="card-subtitle text-muted">${qna.rgsde} 조회 ${qna.co}</h5>
                            <p class="card-text">${qna.cn}</p>
                            <div class="row flex-center child-borders">
                                <a class="paper-btn margin"
                                   onclick="location.href='qnaUpdate?no=${param.no}'">수정</a>
                                <a class="paper-btn margin" onclick="check()">삭제</a>
                                <a class="paper-btn margin" onclick="location.href='qnaList'">목록</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="width: 505px; margin: 0 auto">
                    <h5>댓글</h5>
                    <!--데이터 값이 전부다 넘겨줘야지만 데이터가 저장된다. hidden을 써서라도 넘겨야한다.-->
                    <!--qna.no를 넘겨주는 이유는 누구의 글에 댓글을 쓰는지 확인 같은것-->
                    <!--value="{qna.no} = qna의 테이블의 no번호를 지정-->
                    <form name='commentFrom' id='commentFrom'>
                        <input type="hidden" name="qnaNo" value="${qna.no}">
                        <textarea name="cn" rows="7px" cols="0" style="width: 500px; height: 100px"
                                  placeholder="내용을 입력해주세요"></textarea><br>
                        <input type='button' value='등록' id='register' style="float: right">
                    </form>
                    <table id="commentList"></table>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
  function check() {
    const cf = confirm('게시글을 삭제하시겠습니까?')
    if (cf) {
      location.href = 'deleteQnA?no=${param.no}'
    }
  }

  //여기서부터는 댓글 추가
  $("#register").click(function () {
    //serialize = #commentFrom의 데이터를 자동으로 자리를 찾아준다.
    var params = $("#commentFrom").serialize();
    $.ajax({
      type: "post",
      data: params,
      url: "/comment/insertComment",
      success: function (result) {
        var commentList2 = $("#commentList");
        commentList2.empty();
        CommentListView();
      },
      error: function (err) {
        console.log("등록 에러:" + err);
      }
    });
  });

  //댓글 삭제
  $("#commentList").on("click", ".delete", function () {
    $.ajax({
      type: "get",
      data: {no: $(this).parent().parent().children(".no").text()},
      url: "../comment/deleteComment",
      success: function (result) {
        var commentList3 = $("#commentList");
        commentList3.empty();
        CommentListView();
      },
      error: function (err) {
        alert("err 발생");
      }
    });//ajax end
  });

  //댓글 수정 페이지로 이동
  $("#commentList").on("click", ".modify", function () {
    // console.log($(this).parent().parent().children(".no").text())
    const ta = $(this).parent().parent().children("#cn")
    const text = $(this).parent().parent().children("#cn").text()
    ta.html('<textarea class="taComment">' + text + '</textarea>')

    $(this).attr("class", "regComment").text("등록")
  })

  $('#commentList').on('click', '.regComment', function () {
    $.ajax({
      type: 'post',
      data: {
        "no": $(this).parent().parent().children(".no").text(),
        "cn": $(".taComment").val()
      },
      url: "../comment/updateComment",
      success: function (result) {
        var commentList4 = $("#commentList");
        commentList4.empty();
        CommentListView();
      },
      error: function () {
        alert("분명 에러 날껀데..");
      }
    })
  })

  //댓글의 리스트를 불러오는 메소드
  CommentListView();

  function CommentListView() {
    $.ajax({
      type: "get",
      url: "../comment/selectAllComment",
      success: function (result) {
        console.log(result);
        // 화면에 출력
        const commentList = $('#commentList');
        for (row of result) {
          const tr = $('<tr/>');
          const no = $('<td class="no"/>').html(row['no']);
          tr.append(no);
          const writerId = $('<td/>').html(row['writerId']);
          tr.append(writerId);
          const cn = $('<td id="cn"/>').html(row['cn']);
          tr.append(cn);
          if (${sessionScope.result.no} === row['writerId'])
          {
            tr.append('<td><button class="modify">수정</button></td>');
            tr.append('<td><button class="delete">삭제</button></td>');
          }
          commentList.append(tr);
        }
      },
      error: function (err) {
        console.log(err);
      }
    })
  }
</script>
</body>
</html>