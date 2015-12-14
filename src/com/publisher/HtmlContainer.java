package com.publisher;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.jsp.JspWriter;

import com.publisher.utils.DbUtil;

// TODO
public class HtmlContainer {

	private static String sqlContentQuery = "select name,html from t_main where dmc=?;";
	private Connection con = null;
	
	public HtmlContainer() throws Exception {
		con = DbUtil.getCon();
	}
	
	
	// 缓冲示例
//    String s = 
//    	      "<p>" +
//    	      "  <media type=\"audio\" id=\"au008093\" rights=\"wbowned\">" +
//    	      "    <title>Bee buzz</title>" +
//    	      "  " +
//    	      "  Most other kinds of bees live alone instead of in a colony." +
//    	      "  These bees make tunnels in wood or in the ground." +
//    	      "  The queen makes her own nest." +
//    	      "</p>";
//    	    InputStream is = new ByteArrayInputStream(s.getBytes());
//
//    	    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
//    	    DocumentBuilder db = dbf.newDocumentBuilder();
//    	    Document d = db.parse(is);
//
//    	    Node rootElement = d.getDocumentElement();
//    	    System.out.println(nodeToString(rootElement));
	
	public void writeHtml(JspWriter out, String dmc){
		try {
			String[] name = {"NULL"};
			String content = getHTMLContent(dmc, name);
			out.print("<div align=\"center\" class=\"dmodule_title\">"
					+ name[0]
					+ "	</div>");
			
			out.print(content);
				
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	public String getHTMLContent(String dmc, String[] name) throws SQLException{
		PreparedStatement pstmt = con.prepareStatement(sqlContentQuery);
		pstmt.setString(1, dmc);
		ResultSet resultSet = pstmt.executeQuery();
		if (resultSet.next()){
			name[0]=resultSet.getString(1);
			return resultSet.getString(2);
		}
		return "";
	}


	public void destroy() throws SQLException{
		if (con != null) con.close();
	}
}
