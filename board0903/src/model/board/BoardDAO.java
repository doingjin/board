package model.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.JDBC;

public class BoardDAO {
	
	String SQL_SELECTALL="SELECT * FROM BOARD ORDER BY NUM DESC";
	String SQL_SELECTONE="SELECT * FROM BOARD WHERE NUM=?";
	String SQL_INSERT="INSERT INTO BOARD VALUES ((SELECT NVL(MAX(NUM),0)+1 FROM BOARD),?,?,?,SYSDATE)";
	String SQL_UPDATE="UPDATE BOARD SET TITLE=?, CONTENT=? WHERE NUM=?";
	String SQL_DELETE="DELETE FROM BOARD WHERE NUM=?";
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	// SQL_SELECTALL="SELECT * FROM BOARD ORDER BY NUM DESC"
	public ArrayList<BoardVO> getBoardList(){
		ArrayList<BoardVO> datas=new ArrayList();
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_SELECTALL);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				BoardVO data=new BoardVO();
				data.setNum(rs.getInt("num"));
				data.setId(rs.getString("id"));
				data.setTitle(rs.getString("title"));
				data.setContent(rs.getString("content"));
				data.setBdate(rs.getDate("bdate"));
				datas.add(data);
			}
			rs.close();
		} catch (SQLException e) {
			System.out.println("getBoardList()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return datas;
	}
	
	// SQL_SELECTONE="SELECT * FROM BOARD WHERE ID=?"
	public BoardVO getaBoard(BoardVO vo) {
		BoardVO data=null;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_SELECTONE);
			pstmt.setInt(1, vo.getNum());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				data=new BoardVO();
				data.setNum(rs.getInt("num"));
				data.setId(rs.getString("id"));
				data.setTitle(rs.getString("title"));
				data.setContent(rs.getString("content"));
				data.setBdate(rs.getDate("bdate"));
			}
			rs.close();
		} catch (SQLException e) {
			System.out.println("getaBoard()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return data;
	}
	
	// SQL_INSERT="INSERT INTO BOARD VALUES ((SELECT NVL(MAX(NUM),0)+1 FROM BOARD),?,?,?,SYSDATE)"
	public boolean addBoard(BoardVO vo) {
		boolean res=false;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_INSERT);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());
			pstmt.executeUpdate();
			res=true;
		} catch (SQLException e) {
			System.out.println("addBoard()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return res;
	}
	
	// SQL_UPDATE="UPDATE BOARD SET TITLE=?, CONTENT=? WHERE NUM=?"
	public boolean editBoard(BoardVO vo) {
		boolean res=false;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_UPDATE);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getNum());
			pstmt.executeUpdate();
			res=true;
		} catch (SQLException e) {
			System.out.println("editBoard()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return res;
	}
	
	// SQL_DELETE="DELETE FROM BOARD WHERE NUM=?"
	public boolean deleteBoard(BoardVO vo) {
		boolean res=false;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_DELETE);
			pstmt.setInt(1, vo.getNum());
			pstmt.executeUpdate();
			res=true;
		} catch (SQLException e) {
			System.out.println("deleteBoard()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return res;
	}
}
