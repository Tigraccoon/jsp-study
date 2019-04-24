package snac;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import config.DB;

public class SnacDAO {
	public ArrayList<SnacDTO> getList(){
		ArrayList<SnacDTO> items = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM snac";
		
		try {
			conn = DB.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SnacDTO dto = new SnacDTO();
				dto.setCo(rs.getString("co"));
				dto.setSnak(rs.getString("snak"));
				dto.setPrice(rs.getInt("price"));
				dto.setAmo(rs.getInt("amo"));
				
				items.add(dto);
			}
			
		} catch (Exception e) {
			System.out.println("리스트 출력 에러");
		}finally {
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
}
