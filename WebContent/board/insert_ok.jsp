<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="common.Connector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String title = request.getParameter("title");
String content = request.getParameter("content");
String creusr = request.getParameter("creusr");
String sql ="INSERT INTo board\r\n"+"(title,content,credat,cretim,creusr)\r\n"+
"VALUES(\r\n"+
"?,\r\n"+
"?,\r\n"+
"DATE_FORMAT(NOW(),'%Y%m%d'),\r\n"+
"Date_format(NOW(), '%H%i%s'),\r\n"+
"?\r\n"+
")";
Connection con = null;
try{
con = Connector.getConnection();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,title);
ps.setString(2,content);
ps.setString(3,creusr);
int result = ps.executeUpdate();
if(result==1){
	out.println("성공이야 인마"	);
}
}catch(SQLException e){
	out.println("에러야 인마 ");
}finally{ Connector.close();}
%>



<script>

location.href="/board/list.jsp"
</script>