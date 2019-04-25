package member2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import config.DB;

public class Member2DAO {
	public HashMap<String, Object> getUserInfomation(String userid, String pwd){
		HashMap<String, Object> map = new HashMap<String, Object>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM member2 WHERE userid=? AND pwd=?";
			conn = DB.getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Member2DTO dto = new Member2DTO();
				dto.setUserid(userid);
				dto.setPwd(pwd);
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setHp(rs.getString("hp"));
				dto.setZipcode(rs.getString("zipcode"));
				dto.setAddress1(rs.getString("address1"));
				dto.setAddress2(rs.getString("address2"));
				dto.setJoin_date(String.valueOf(rs.getDate("join_date")));
				dto.setLogin_date(String.valueOf(rs.getDate("login_date")));
				
				map.put(userid, dto);
			} else {
				Member2DTO dto = new Member2DTO();
				dto.setName("아이디 없음!");

				map.put(userid, dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getUserInformation Error~");
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
