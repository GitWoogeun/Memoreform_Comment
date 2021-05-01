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
            <div class="row flex-center">
              <div class="text-center">
                <h1>의뢰서 작성</h1>
              </div>
            </div>
          </div>

          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>

          <div class="section">
            <!-- 네비게이션 바 -->
            <jsp:include page="../common/nav.jsp"/>

            <div class="row flex-spaces">
              <div class="sm-6 col">
                <form action="insertRequest" method="post" enctype="multipart/form-data">
                  <fieldset class="form-group">
                    <legend>카테고리</legend>
                    <div class="row flex-spaces">
                      <label for="paperRadios1" class="paper-radio">
                        <input type="radio" name="ctgry" id="paperRadios1" value="의류" required>
                        <span>의류</span>
                      </label>
                      <label for="paperRadios2" class="paper-radio">
                        <input type="radio" name="ctgry" id="paperRadios2" value="가구">
                        <span>가구</span>
                      </label>
                      <label for="paperRadios3" class="paper-radio">
                        <input type="radio" name="ctgry" id="paperRadios3" value="가죽">
                        <span>가죽</span>
                      </label>
                      <label for="paperRadios4" class="paper-radio">
                        <input type="radio" name="ctgry" id="paperRadios4" value="가전">
                        <span>가전</span>
                      </label>
                    </div>
                  </fieldset>
                  <div class="form-group">
                    <label for="title">제목</label>
                    <input class="input-block" type="text" placeholder="제목을 입력해주세요." id="title"
                           name="sj" required>
                  </div>
                  <div class="form-group">
                    <div class="form-group">
                      <label for="content">내용</label>
                      <textarea class="no-resize input-block" id="content"
                                placeholder="내용을 입력해주세요." name="cn" required></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="photo">사진</label>
                    <input class="input-block" type="file" placeholder="사진을 올려주세요." id="photo"
                           name="file" required>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn-block btn-primary">
                      의뢰서 작성하기
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
  </body>
</html>