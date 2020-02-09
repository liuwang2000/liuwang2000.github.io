package com.ttjsyxt.servlet;

import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import com.ttjsyxt.dao.*;
import com.ttjsyxt.entity.Master;

public class masterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public masterLogin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		masterDao masterDao=new masterDao();
		String a_name = request.getParameter("a_name");
		String password = request.getParameter("password");
		String remeberpsw = request.getParameter("remeberpsw");

		Master master=new Master(a_name, password);
		// 如果选择了记住密码，就将密码和用户名保存到Cookie中，保存一周
		if (remeberpsw != null && remeberpsw.equals("remeberpsw")) {
			Cookie name_cookie = new Cookie("a_name", URLEncoder.encode(a_name, "UTF-8"));
			Cookie password_cookie = new Cookie("password", URLEncoder.encode(password, "UTF-8"));
			name_cookie.setMaxAge(60 * 60 * 24 * 7);
			name_cookie.setPath("/");
			password_cookie.setMaxAge(60 * 60 * 24 * 7);
			password_cookie.setPath("/");
			response.addCookie(password_cookie);
			response.addCookie(name_cookie);
		}

		if (masterDao.master(master) > 0) {// 条件成立表示登录成功
			response.sendRedirect("/ttjsyxt/pages/administrator/administrator_success_login.jsp");// 重定向到登录成功的页面
		} else {// 数据库中不存在此人，登录失败
			HttpSession msg = request.getSession();
			msg.setAttribute("adminlogin", "登录失败，请重新登录");
			response.sendRedirect("/ttjsyxt/pages/administrator/administrator_login.jsp");// 重定向到登录失败页面
		}
	}

}
