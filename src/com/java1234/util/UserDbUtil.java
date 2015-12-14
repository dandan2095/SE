package com.java1234.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class UserDbUtil {

	
	public Connection getCon() throws Exception{
		Class.forName(PropertiesUtil.getValue("jdbcName"));
		Connection con=DriverManager.getConnection(PropertiesUtil.getValue("UserDbUrl"), PropertiesUtil.getValue("dbUserName"), PropertiesUtil.getValue("dbPassword"));
		return con;
	}
	
	public void closeCon(Connection con)throws Exception{
		if(con!=null){
			con.close();
		}
	}
	
	public static void main(String[] args) {
		UserDbUtil userdbUtil=new UserDbUtil();
		try {
			userdbUtil.getCon();
			System.out.println("��ݿ����ӳɹ�");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("��ݿ�����ʧ��");
		}
	}
}
