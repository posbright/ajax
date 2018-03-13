package com.bunfly.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation class AjaxTest
 */
@WebServlet("/ajaxTest")
public class AjaxTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String time = request.getParameter("time");
		Map<String,String> map = new HashMap<>();
		map.put("name", "张三");
		map.put("time", "1234567");
		ObjectMapper maper = new ObjectMapper();
		maper.writeValue(response.getWriter(), map);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
