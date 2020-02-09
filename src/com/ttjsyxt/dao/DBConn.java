package com.ttjsyxt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn {
	private static String driverName = "com.mysql.jdbc.Driver";
	private static String dbURL = "jdbc:mysql://localhost:3306/cash_register?useUnicode=true&characterEncoding=utf-8";
	private static String userName = "root";
	private static String userPwd = "123";

	private static Connection getCoonection() {
		Connection conn = null;
		try {
			// 加载JDBC驱动
			Class.forName(driverName);
			// 获取连接
			conn = DriverManager.getConnection(dbURL, userName, userPwd);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * PreparedStatement执行查询操作
	 * 
	 * @param SQL
	 * @param args
	 * @return
	 */
	public static ResultSet executeQuery(String SQL, Object[] args) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = getCoonection();
			ps = conn.prepareStatement(SQL);
			// 设置参数
			if (args != null && args.length > 0) {
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i + 1, args[i]);
				}
			}
			rs = ps.executeQuery();
			System.out.println("执行   " + SQL + "  成功");
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * PreparedStatement执行增删改操作
	 * 
	 * @param SQL
	 * @param args
	 * @return
	 */
	public static boolean executeUpdate(String SQL, Object[] args) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getCoonection();
			ps = conn.prepareStatement(SQL);
			// 设置参数
			if (args != null && args.length > 0) {
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i + 1, args[i]);
				}
			}
			int result = ps.executeUpdate(); // 返回受影响的行数
			System.out.println("执行   " + SQL + "  成功");
			if (result > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	/**
	 * Statement执行查询操作
	 * 
	 * @param SQL
	 * @return
	 */
	public static ResultSet executeQuery(String SQL) {
		Connection conn = null;
		Statement sm = null;
		ResultSet rs = null;
		try {
			conn = getCoonection();
			sm = conn.createStatement();
			rs = sm.executeQuery(SQL);
			System.out.println("执行   " + SQL + "  成功");
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (sm != null)
					sm.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * Statement执行增删改操作
	 * 
	 * @param SQL
	 * @return
	 */
	public static boolean executeUpdate(String SQL) {
		Connection conn = null;
		Statement sm = null;
		try {
			conn = getCoonection();
			sm = conn.createStatement();
			int result = sm.executeUpdate(SQL);
			System.out.println("执行   " + SQL + "  成功");// 返回受影响的行数
			if (result > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (sm != null)
					sm.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
}
