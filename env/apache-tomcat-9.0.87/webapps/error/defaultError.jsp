<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error - Unexpected Error</title>
</head>
<body>
<h1>Unexpected Error</h1>
<p>죄송합니다, 예상치 못한 오류가 발생했습니다.</p>
<p>오류 메시지: <%= exception.getMessage() %></p>
<a href="<%= request.getContextPath() %>/">홈으로 돌아가기</a>
</body>
</html>
