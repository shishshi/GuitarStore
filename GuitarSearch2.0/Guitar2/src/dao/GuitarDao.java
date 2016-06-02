package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.GuitarSpec;
import entity.Inventory;
import entity.JDBC;

public class GuitarDao {
	public static Inventory inventory() 
	{
		Inventory inventory = new Inventory();
		JDBC jdbc=new JDBC();
		Connection connection =jdbc.getConnection();
		PreparedStatement pstat;
		ResultSet rs;
		try {
			pstat = connection.prepareStatement("select * from guitar");
			rs = pstat.executeQuery();
			while (rs.next()) {
				GuitarSpec guitarspec = new GuitarSpec(null, null, null, null);
				guitarspec.setBuilder(rs.getString("builder"));
				guitarspec.setModel(rs.getString("model"));
				guitarspec.setType(rs.getString("type"));
				guitarspec.setWood(rs.getString("wood"));
							
				inventory.addGuitar(rs.getInt("id"), rs.getDouble("price"), guitarspec);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return inventory;
	}
}
