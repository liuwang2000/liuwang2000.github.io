package com.ttjsyxt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ttjsyxt.entity.Master;

public class masterDao extends DBCon {
	public int master(Master master) {
		Connection conn = this.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		int result = 0;
		String sql = "select count(*) as num from tb_masterLogin where a_name=? and password=?";
		try {

			pre = conn.prepareStatement(sql);
			pre.setString(1, master.getA_name());
			pre.setString(2, master.getPassword());
			rs = pre.executeQuery();
			if (rs.next()) {
				result = rs.getInt("num");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close(rs);
			this.close(pre);
			this.close(conn);

		}
		return result;
	}
}
