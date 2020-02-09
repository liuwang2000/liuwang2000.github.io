package com.ttjsyxt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DBCon {
	private static final String URL = "jdbc:mysql://localhost:3306/cash_register?useUnicode=true&amp;characterEncoding=UTF-8";
	private static final String USER = "root";
	private static final String PASSWORD = "123";

	/**
	 * 封装获得连接的方法
	 * 
	 * @return
	 */
	public Connection getConnection() {
		Connection conn = null;
		try {
			// 加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 获得连接
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 封装对继承AutoCloseable接口类的关闭操作
	 * 
	 * @param object
	 */
	public void close(AutoCloseable object) {
		if (object != null) {
			try {
				object.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * 执行sql语句，可变参数为sql语句中需要的参数
	 * 
	 * @param sql
	 * @param objs
	 */
	public void executeSql(String sql, Object... objs) {

		Connection conn = this.getConnection();
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			// 循环为每一个变量设置参数
			for (int i = 0; i < objs.length; i++) {
				ps.setObject(i + 1, objs[i]);
			}
			// 执行sql
			ps.execute();
			System.out.println("执行   " + sql + "  成功");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close(ps);
			this.close(conn);
		}
	}

}
