<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.mem.*" errorPage="error.jsp"%>
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
			// throw new Exception("controlUser_signup 오류!");
			out.println("<script>alert('이미 사용 중인 아이디입니다.');history.go(-1);</script>");
		}
	} else if(action.equals("editPw")){
		String pwnow=request.getParameter("pwnow");
		MemVO user=memdao.getaMem(memvo);
		//System.out.println(memvo.getPw());
		//System.out.println(user.getPw());
		if(pwnow.equals(user.getPw())){ // 현재 입력한 pw가 이 id의 pw와 같다면,
			if(memdao.editMem(memvo)){
				//out.println("<script>alert('정상적으로 수정되었습니다.');</script>");
				pageContext.forward("controlBoard.jsp?action=mypage");
			} else {
				throw new Exception("controlUser_edit 오류!");
			}
		} else {
			out.println("<script>alert('현재 패스워드를 잘 못 입력하였습니다:(');history.go(-1);</script>");
		}
	} else if(action.equals("delete")){
		if(memdao.deleteMem(memvo)){
			//out.println("<script>alert('정상적으로 탈퇴되었습니다.');</script>");
			response.sendRedirect("controlUser.jsp?action=logout");
		} else {
			throw new Exception("controlUser_delete 오류!");
		}
	}   else{
		out.println("파라미터 확인!");
	}
	

%>