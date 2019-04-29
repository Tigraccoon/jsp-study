package member4;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import config.DB;

public class Member4DAO {
	public HashMap<String,Object> getUserInfo(String id, String pwd){
		HashMap<String,Object> map = new HashMap<String,Object>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DB.getConn();
			String sql = "SELECT * FROM member4 WHERE id=? AND pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			Member4DTO dto = new Member4DTO();
			if(rs.next()) {
				dto.setId(id);
				dto.setPwd(pwd);
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				
				map.put(id, dto);
			} else {
				dto.setName("아이디가 없으요~~!!!");
				
				map.put(id, dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getUserInfo Error..");
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
		
		
		return map;
	}
}
