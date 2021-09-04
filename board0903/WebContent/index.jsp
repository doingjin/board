<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
	<%
		// 처음부터 자바코드를 가져올 순 없어서 컨트롤러에게 데이터 보여달라고 토스!
		
		pageContext.forward("controlBoard.jsp?action=getlist");
		
	%>