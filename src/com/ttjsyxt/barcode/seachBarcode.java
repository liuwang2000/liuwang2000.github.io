package com.ttjsyxt.barcode;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.*;

import com.ttjsyxt.dao.GoodsDao;
import com.ttjsyxt.entity.goods;

public class seachBarcode extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public seachBarcode() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ArrayIndexOutOfBoundsException {
		String barcode = request.getParameter("barcode");
		if (barcode.length() != 13) {
			request.setAttribute("error", "正确的条形码");
			request.getRequestDispatcher("/pages/Firstbarcode.jsp").forward(request, response);
		}
		String pathUrl = "https://www.mxnzp.com/api/barcode/goods/details?barcode=" + barcode;
		String result = "";
		// 6911988007209
//		6925303721039

		try {
			URL url = new URL(pathUrl);
			BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream(), "utf-8"));
			String line;
			while ((line = reader.readLine()) != null) {
				result = line;
			}
			reader.close();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
//		int beginIndex=result.indexOf("data")+7;
//		int lastIndex=result.lastIndexOf("}")-1;
//		result=result.substring(beginIndex,lastIndex);
//		String[] result1=new String[6];
//		String[] goods=new String[10];
//		result1=result.split(",");
//		String yinhao=result1[0].substring(0, 1);
//		goods=result1[0].split(yinhao);
//		request.setAttribute("result", goods[3]);
		if (result.contains("暂未收录此商品") || result == null) {
			// response.sendRedirect("/ttjsyxt/pages/Firstbarcode.jsp");
			request.setAttribute("error", "暂未收录此商品");
			request.getRequestDispatcher("/pages/Firstbarcode.jsp").forward(request, response);
		} else {
			int beginIndex = result.indexOf("data") + 7;
			int lastIndex = result.lastIndexOf("}") - 1;
			result = result.substring(beginIndex, lastIndex);

			String yinhao = result.substring(0, 1);
			String[] result1 = new String[10];
			String[] goodsName = new String[10];
			String[] Barcode = new String[10];
			String[] Price = new String[10];
			String[] Brand = new String[10];
			String[] Supplier = new String[10];

			result1 = result.split(yinhao + "," + yinhao);

			goodsName = result1[0].split(":");
			Barcode = result1[1].split(":");
			Price = result1[2].split(":");
			Brand = result1[3].split(":");
			Supplier = result1[4].split(":");

			String bb = null;
			String go = null;
			String ba = null;
			String pr = null;
			String su = null;

			bb = StringUtils.remove(Brand[1], yinhao);
			go = StringUtils.remove(goodsName[1], yinhao);
			pr = StringUtils.remove(Price[1], yinhao);
			ba = StringUtils.remove(Barcode[1], yinhao);
			su = StringUtils.remove(Supplier[1], yinhao);

//			goodsName =goodsName[1].split(yinhao);
//			Price=Price[1].split(yinhao);
//			Brand=Brand[1].split(yinhao);
//			Barcode=Barcode[1].split(yinhao);
//			goods goods=new goods(goodsName[3],Barcode[3],Price[3],Brand[3]);
			goods goods = new goods();
			goods.setGoodsName(go);
			goods.setBrand(bb);
			goods.setBarcode(ba);
			goods.setPrice(pr);
			goods.setSupplier(su);
			GoodsDao goodsDao = new GoodsDao();
//			try {
//				goods.setNumber(goodsDao.SelectNumber(goods));
//				goods.setSellprice(goods.getSellprice());
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
			System.out.println(goodsDao.have(goods));
			if (goodsDao.have(goods) > 0) {
				goods = goodsDao.SearchList(goods);
			}
			request.setAttribute("goods", goods);
			request.getRequestDispatcher("/pages/barcode.jsp").forward(request, response);
		}

	}
}
