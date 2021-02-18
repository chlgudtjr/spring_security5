<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>/sample/admin page</h1>


<p>principal : <sec:authentication property="principal"/></p>
<!-- 전에는 DB안에서 Model안에 넣어서 jsp로 넘김 근데 스프링시큐리티를 쓰면 그럴필요가 없음! 
user 정보를 메모리에 올리는데 기본적으로 세션안에 시큐리티 관련된 것들을 메모리에 올리고 세션 시간다되거나 날릴 때 or 필요가 없어질때 날림
 + 설정만으로 알아서 스프링시큐리티가 몇가지 객체를 만들어놓고 관리 -> 그 중 하나가 principal: jsp페이지에서 사용 가능  -->

<p>사용자 아이디 : <sec:authentication property="principal.username"/></p>

<a href="/customLogout">Logout</a>


</body>
</html>
