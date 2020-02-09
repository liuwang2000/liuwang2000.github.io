package com.ttjsyxt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.websocket.Session;

import com.ttjsyxt.entity.goods;

public class GoodsDao extends DBCon {
	public boolean wareHousing(goods goods) {
		boolean ret = false;
		int result = 0;
		Connection conn = this.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		try {
			String sql = "select count(*) as num from tb_goods where barcode=?";
			pre = conn.prepareStatement(sql);
			pre.setString(1, goods.getBarcode());
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
		Object args[] = new Object[7];
		args[0] = goods.getGoodsName();
		args[1] = goods.getPrice();
		args[2] = goods.getBrand();
		args[3] = goods.getSupplier();
		args[4] = goods.getNumber();
		args[5] = goods.getSellprice();
		args[6] = goods.getBarcode();

		if (result > 0) {
			String sql = "update tb_goods set goodsname=?,price=?,brand=?,supplier=?,number=?,sellprice=? where barcode=?";
			// this.executeSql(sql,
			// goods.getGoodsName(),goods.getPrice(),goods.getBrand(),goods.getSupplier(),goods.getNumber(),goods.getBarcode());
			ret = DBConn.executeUpdate(sql, args);
			goods.setMessage("已查询到库存内记录,修改成功!");
		} else {
			String sql = "insert into tb_goods(goodsname,price,brand,supplier,number,barcode,sellprice)values(?,?,?,?,?,?,?)";
//			this.executeSql(sql, goods.getGoodsName(),goods.getPrice(),goods.getBrand(),goods.getSupplier(),goods.getNumber(),goods.getBarcode());
			ret = DBConn.executeUpdate(sql, args);
			goods.setMessage("未查询到库存内记录,添加成功!");
		}

		return ret;
	}

	public int SelectNumber(goods goods) throws SQLException {
		int result = 0;

		String sql = "select number and sellprice from tb_goods where barcode=?";
		Connection conn = this.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		try {
			pre = conn.prepareStatement(sql);
			pre.setString(1, goods.getBarcode());
			rs = pre.executeQuery();
			if (rs.next()) {
				result = rs.getInt("number");
				goods.setSellprice(rs.getString("sellprice"));
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

	public boolean Delete(goods goods) {
		boolean ret = false;
		String sql = "delete from tb_goods where barcode =?";
		this.executeSql(sql, goods.getBarcode());
		return ret;
	}

	public List readList() {
		List<goods> list = new ArrayList<goods>();
		goods goods = new goods();
		Connection con = this.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		try {

			String sql = "select * from tb_goods";
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while (rs.next()) {
				String barcode = rs.getString("barcode");
				String goodsname = rs.getString("goodsname");
				String sellprice = rs.getString("sellprice");
				String price = rs.getString("price");
				String brand = rs.getString("brand");
				String supplier = rs.getString("supplier");
				int number = rs.getInt("number");

				goods = new goods(goodsname, barcode, price, brand, number, supplier, sellprice, sellprice);
				list.add(goods);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close(rs);
			this.close(pre);
			this.close(con);
		}
		return list;
	}

	public goods SearchList(goods goods) {
		Connection conn = this.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;

		try {

			String sql = "select * from tb_goods where barcode=?";
			pre = conn.prepareStatement(sql);
			pre.setString(1, goods.getBarcode());
			rs = pre.executeQuery();
			if (rs.next()) {
				String barcode = rs.getString("barcode");
				String goodsname = rs.getString("goodsname");
				String sellprice = rs.getString("sellprice");
				String price = rs.getString("price");
				String brand = rs.getString("brand");
				String supplier = rs.getString("supplier");
				int number = rs.getInt("number");

				goods = new goods(goodsname, barcode, price, brand, number, supplier, sellprice, sellprice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close(rs);
			this.close(pre);
			this.close(conn);
		}
		return goods;
	}

	public int have(goods goods) {
		int result = 0;
		Connection conn = this.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		try {
			String sql = "select count(*) as num from tb_goods where barcode=?";
			pre = conn.prepareStatement(sql);
			pre.setString(1, goods.getBarcode());
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
