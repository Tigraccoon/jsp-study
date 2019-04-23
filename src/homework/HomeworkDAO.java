package homework;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import config.DB;

public class HomeworkDAO {
	public ArrayList<HomeworkDTO> homework_list(){
		ArrayList<HomeworkDTO> items = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DB.getConn();
			String sql = "SELECT * FROM homework";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				String id = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String hp = rs.getString("hp");
				String in_date = String.valueOf(rs.getDate("in_date"));
				
				items.add(new HomeworkDTO(id, name, email, hp, in_date));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("list Errer");
		} finally {
			try {
				if(rs!=null) rs.close(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt!=null) pstmt.close(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn!=null) conn.close(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return items;
	}
	
	public int upload(HomeworkDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into homework(id, name, email, hp) values(?,?,?,?)";
			conn = DB.getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getHp());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Upload Error..");
		}finally {
			try {
				if(pstmt!=null) pstmt.close(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn!=null) conn.close(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return -1;
	}
	
	
}
