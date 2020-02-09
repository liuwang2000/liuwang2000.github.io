package com.ttjsyxt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ttjsyxt.dao.GoodsDao;
import com.ttjsyxt.entity.goods;


public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Delete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsDao goodsDao=new GoodsDao();
		goods goods =new goods();
		goods.setBarcode(request.getParameter("barCode"));
		goodsDao.Delete(goods);
		String message="删除成功";
		request.setAttribute("message", message);
		request.getRequestDispatcher("/pages/Firstbarcode.jsp").forward(request, response);
	}

}
