<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.mem.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="memdao" class="model.mem.MemDAO"/>
<jsp:useBean id="memvo" class="model.mem.MemVO"/>
<jsp:setProperty property="*" name="memvo"/>

<%
	String action=request.getParameter("action");

	if(action.equals("getlist")){
	
	} else if(action.equals("login")){
		MemVO user=memdao.getaMem(memvo);
		if(user==null){
			out.println("<script>alert('존재하지 않는 아이디입니다.');history.go(-1);</script>");
		} else if(!(memvo.getPw().equals(user.getPw()))){
			out.println("<script>alert('비밀번호를 확인해주세요.');history.go(-1);</script>");
		} else {
			session.setAttribute("user", user);
			pageContext.forward("controlBoard.jsp?action=getlist");
		}
	} else if(action.equals("logout")){
		session.invalidate();
		pageContext.forward("controlBoard.jsp?action=getlist");
	} else if(action.equals("idcheck")){
		MemVO mem=memdao.getaMem(memvo);
		if(mem==null){
			out.println("<script>alert('사용 가능한 아이디입니다.');history.go(-1);</script>");
		} else {
			out.println("<script>alert('이미 사용 중인 아이디입니다.');history.go(-1);</script>");
		}
	} else if(action.equals("signup")){
		if(memdao.addMem(memvo)){
			pageContext.forward("login.jsp");
		} else {
			throw new Exception("controlUser_signup 오류!");
		}
	} else if(action.equals("edit")){
	
	} else if(action.equals("delete")){
	
	} 
	

%>