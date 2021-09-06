package model.mem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.JDBC;

public class MemDAO {

	String SQL_SELECTALL="SELECT * FROM MEM";
	String SQL_SELECTONE="SELECT * FROM MEM WHERE ID=?";
	String SQL_INSERT="INSERT INTO MEM VALUES (?,?)";
	String SQL_UPDATE="UPDATE BOARD SET PW=? WHERE ID=?";
	String SQL_DELETE="DELETE FROM BOARD WHERE ID=?";
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	// SQL_SELECTALL="SELECT * FROM MEM"
	public ArrayList<MemVO> getMemList(){
		ArrayList<MemVO> datas=new ArrayList();
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_SELECTALL);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				MemVO data=new MemVO();
				data.setId(rs.getString("id"));
				data.setPw(rs.getString("pw"));
				datas.add(data);
			}
			rs.close();
		} catch (SQLException e) {
			System.out.println("getMemList()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return datas;
	}
	
	// SQL_SELECTONE="SELECT * FROM MEM WHERE ID=?"
	public MemVO getaMem(MemVO vo) {
		MemVO data=null;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_SELECTONE);
			pstmt.setString(1, vo.getId());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				data=new MemVO();
				data.setId(rs.getString("id"));
				data.setPw(rs.getString("pw"));
			}
			rs.close();
		} catch (SQLException e) {
			System.out.println("getaMem()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return data;
	}
	
	// SQL_INSERT="INSERT INTO MEM VALUES (?,?)"
	public boolean addMem(MemVO vo) {
		boolean res=false;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_INSERT);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			res=true;
		} catch (SQLException e) {
			System.out.println("addMem()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return res;
	}
	
	// SQL_UPDATE="UPDATE BOARD SET PW=? WHERE ID=?"
	public boolean editMem(MemVO vo) {
		boolean res=false;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_UPDATE);
			pstmt.setString(1, vo.getPw());
			pstmt.setString(2, vo.getId());
			res=true;
		} catch (SQLException e) {
			System.out.println("editMem()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return res;
	}
	
	// SQL_DELETE="DELETE FROM BOARD WHERE ID=?"
	public boolean deleteMem(MemVO vo) {
		boolean res=false;
		conn=JDBC.connect();
		try {
			pstmt=conn.prepareStatement(SQL_DELETE);
			pstmt.setString(1, vo.getId());
			res=true;
		} catch (SQLException e) {
			System.out.println("deleteMem()");
			e.printStackTrace();
		} finally {
			JDBC.disconnect(pstmt, conn);
		}
		return res;
	}
	
}
