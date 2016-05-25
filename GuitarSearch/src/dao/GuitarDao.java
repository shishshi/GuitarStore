package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Guitar;
import jdbc.JDBC;

public class GuitarDao{

	public List<Guitar> search(String type) {
		// TODO Auto-generated method stub
		List<Guitar> list=new ArrayList<Guitar>();
		String sql="select * from guitar where type=?";
		JDBC jdbc=new JDBC();
		Connection conn=jdbc.getConnection();
		
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, type);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Guitar guitar=new Guitar();
				guitar.setId(rs.getInt(1));
				guitar.setBuilder(rs.getString(2));
				guitar.setModel(rs.getString(3));
				guitar.setType(type);
				guitar.setWood(rs.getString(5));
				guitar.setPrice(rs.getDouble(6));
				list.add(guitar);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			jdbc.closeConnection(conn);
		}
		return null;
	}


}