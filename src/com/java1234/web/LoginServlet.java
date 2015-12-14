package com.java1234.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java1234.dao.UserDao;
import com.java1234.model.User;
import com.java1234.util.UserDbUtil;

public class LoginServlet extends HttpServlet{

	/**s
	 *
	 */
	private static final long serialVersionUID = 1L;

	UserDbUtil userdbUtil=new UserDbUtil();
	UserDao userDao=new UserDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String remember=request.getParameter("remember");
		
		Connection con=null;
		try{
			con=userdbUtil.getCon();
			User user=new User(userName,password);
			User currentUser=userDao.login(con, user);
			if(currentUser==null){
				request.setAttribute("user", user);
				request.setAttribute("error", "�û�����������");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else{
				if("remember-me".equals(remember)){
					rememberMe(userName,password,response);
				}
				session.setAttribute("currentUser", currentUser);
				request.getRequestDispatcher("main").forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				userdbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


	private void rememberMe(String userName,String password,HttpServletResponse response){
		Cookie user=new Cookie("user",userName+"-"+password);
		user.setMaxAge(1*60*60*24*7);
		response.addCookie(user);
	}
}
