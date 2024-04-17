## 3차 Final_project 영화 예매를 위한 스프링3.0 MVC 기반 사이트
#### 프로젝트 주최 : 이젠IT아카데미
<hr>
<b>프로젝트명 :클라우드 및 Spring Framework를 활용한 공공데이터 기반 티켓팅 시스템</b>
<b>기간</b> : 2024/03/18 ~ 2024/04/16<br>
<b>팀</b> : D팀<br>
<b>팀원</b> : 이준택, 전용휘, 정다희<br>
<b>기획의도</b> : Spring Framework를 기반으로 공공데이터를 활용한 실제 데이터로<br>
사용자가 간편하고 편리하게 영화를 예매할 수 있는 기능을 제공하고<br>
다양한 데이터가 존재하는 현재의 트렌드에 맞춰 변화하는 데이터에 대응할 수 있는 시스템 개발.<br>

#### 개발환경
개발환경 : tomcat 9.0, MySQL 8.0.35, JDK 13.0.2, GitHub<br>
언어 및 기술 : HTML, CSS, JavaScript, jQuery, JAVA, jstl, el, mybatis, Springframework 4.3.4<br>
개발도구 : spring-tool-suite-3.9.13, StarUML, ERMaster, docker, Filezila, AWS

#### PPT 주소
https://www.canva.com/design/DAF9eQkK28Q/dQ3eTfLGYHlYETJ9mqbNwQ/edit?utm_content=DAF9eQkK28Q&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

<br>
<br>
<b>팀원 전용휘 기여 내용</b><br>
<br>
<b>설계 및 DB-</b><br>
화면설계서 작성, DB설계서 작성 및 ermaster, mysql을 활용한 DB구현<br>
<br>

<b>MVC 패턴 설계-</b><br>
WEB-INF 하위 view 위치로 직접 접근 차단, 프론트 컨트롤러 설계 및 구현<br>

<b>util-</b><br>
Thread-safe 를 고려한 싱글톤을 이용한 DB매니저 구현<br>
커넥션 풀 구현<br>
BCrypt 암호화 구현<br>

<b>로그인 페이지 전체-</b><br>
비밀번호 찾기 시 이메일 API를 활용한 인증 구현<br>
쿠키를 활용한 아이디 저장 구현<br>


<b>관리자 페이지 전체-</b><br>
조회,작성,수정,삭제 기본 페이지 구현<br>
ajax 통신을 활용한 DB 업데이트 구현






