<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error 500 - Internal Server Error</title>
</head>
<body>
<h1>Error 500 - Internal Server Error</h1>
<p>죄송합니다, 서버에 오류가 발생했습니다.</p>
<a href="<%= request.getContextPath() %>/">홈으로 돌아가기</a>
</body>
</html>
