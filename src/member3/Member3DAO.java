package member3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import config.DB;

public class Member3DAO {
	public HashMap<String,Object> getUserInfo(String userid, String pwd){
		HashMap<String, Object> map = new HashMap<String, Object>();
		Member3DTO dto = new Member3DTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM member3 WHERE userid=? and pwd=?";
			conn = DB.getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setUserid(userid);
				dto.setPwd(pwd);
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setHp(rs.getString("hp"));
				
				map.put(userid, dto);
			} else {
				dto.setName("아이디가 없습니다!!");
				map.put(userid, dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getUserInfo Error~");
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
