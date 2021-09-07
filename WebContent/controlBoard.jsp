<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.board.*" errorPage="error.jsp"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="brddao" class="model.board.BoardDAO" />
<jsp:useBean id="brdvo" class="model.board.BoardVO" />
<jsp:setProperty property="*" name="brdvo"/>

<%
	String action=request.getParameter("action");
	String ctgr=request.getParameter("ctgr");
	String search=request.getParameter("search");
	if(action.equals("getlist")){
		//System.out.println(ctgr);
		//System.out.println(search);
		ArrayList<BoardVO> datas=null;
		if(ctgr==""||search==null){
			datas=brddao.getBoardList();
			//System.out.println("확");
		} else {
			datas=brddao.searchBoard(ctgr,search);
			//System.out.println("인");
		}
		request.setAttribute("datas", datas);
		pageContext.forward("main.jsp");
		
	} else if(action.equals("mypage")){
		ArrayList<BoardVO> datas=brddao.getMyList(brdvo);
		request.setAttribute("datas", datas);
		pageContext.forward("myPage.jsp");
		
	} else if(action.equals("getone")){
		BoardVO data=brddao.getaBoard(brdvo);
		request.setAttribute("data", data);
		pageContext.forward("getone.jsp");
		
	} else if(action.equals("edit1")){
		BoardVO data=brddao.getaBoard(brdvo);
		request.setAttribute("data", data);
		pageContext.forward("editPost.jsp");
		
	} else if(action.equals("add")){
		if(brddao.addBoard(brdvo)){
			response.sendRedirect("controlBoard.jsp?action=getlist");
		} else {
			throw new Exception("control_add 오류!");
		}
	} else if(action.equals("edit")){
		if(brddao.editBoard(brdvo)){
			//out.println("<script>alert('수정이 완료되었습니다.');</script>"); 이거 출력 안됨!
			response.sendRedirect("controlBoard.jsp?action=getlist");
		}  else {
			throw new Exception("control_edit 오류!");
		}
	} else if(action.equals("delete")){
		if(brddao.deleteBoard(brdvo)){
			out.println("<script>alert('글이 삭제되었습니다.');</script>");
			response.sendRedirect("controlBoard.jsp?action=getlist");
		} else {
			throw new Exception("control_delete 오류!");
		}
	}  else{
		out.println("파라미터 확인!");
	}






%>