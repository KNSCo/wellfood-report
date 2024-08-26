<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error 404 - Page Not Found</title>
</head>
<body>
<h1>Error 404 - Page Not Found</h1>
<p>죄송합니다, 요청하신 페이지를 찾을 수 없습니다.</p>
<a href="<%= request.getContextPath() %>/">홈으로 돌아가기</a>
</body>
</html>
