<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="memdao" class="model.mem.MemDAO"/>
<jsp:useBean id="memvo" class="model.mem.MemVO"/>
<jsp:setProperty property="*" name="memvo"/>

<%
	String action=request.getParameter("action");

	if(action.equals("getlist")){
	
	} else if(action.equals("getone")){
	
	} else if(action.equals("add")){
	
	} else if(action.equals("edit")){
	
	} else if(action.equals("delete")){
	
	} 
	

%>