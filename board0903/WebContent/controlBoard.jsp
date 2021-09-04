<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.board.*" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="brddao" class="model.board.BoardDAO" />
<jsp:useBean id="brdvo" class="model.board.BoardVO" />
<jsp:setProperty property="*" name="brdvo"/>

<%
	String action=request.getParameter("action");
	
	if(action.equals("getlist")){
		ArrayList<BoardVO> datas=brddao.getBoardList();
		request.setAttribute("datas", datas);
		pageContext.forward("main.jsp");
		
	} else if(action.equals("getone")){
		BoardVO data=brddao.getaBoard(brdvo);
		request.setAttribute("data", data);
		pageContext.forward("getone.jsp");
		
	} else if(action.equals("add")){
		
	} else if(action.equals("edit")){
		
	} else if(action.equals("delete")){
		
	} 






%>