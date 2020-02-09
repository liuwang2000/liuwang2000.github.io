package com.ttjsyxt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ttjsyxt.dao.GoodsDao;
import com.ttjsyxt.entity.goods;

public class Warehousing extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Warehousing() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		goods goods = new goods();
		request.setCharacterEncoding("UTF-8");
		goods.setGoodsName(request.getParameter("goodsname"));
		goods.setBrand(request.getParameter("brand"));
		goods.setBarcode(request.getParameter("barCode"));
		goods.setSupplier(request.getParameter("supplier"));
		goods.setSellprice(request.getParameter("sellprice"));
		goods.setPrice(request.getParameter("price"));
		goods.setNumber(Integer.parseInt(request.getParameter("number")));

		System.out.println(request.getParameter("sellprice"));
		GoodsDao goodsDao = new GoodsDao();
		goodsDao.wareHousing(goods);
		String message=goods.getMessage();
		request.setAttribute("message", message);
		request.getRequestDispatcher("/pages/Firstbarcode.jsp").forward(request, response);
	}

}
