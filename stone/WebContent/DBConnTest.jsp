<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*;"%>
<%
 Connection con = null;
 try{
  Class.forName("com.mysql.jdbc.Driver");
  String jdbcUrl="jdbc:mysql://localhost:3306/stone"; // 접속할 주소
  String id="root";
  String pass="kooki1223";
  con=DriverManager.getConnection(jdbcUrl,id,pass);
  out.println("Connection Success");

  Statement stmt = con.createStatement();
  //String sql = "insert into done2(name, age) values(\"test\", 18);"; 
  
  String sql = "INSERT INTO `stone`.`board` (`SUBJECT`, `WRITER`, `CONTENTS`, `HIT`, `IP`, `REG_DATE`) VALUES ('test3', 'test3', 'test3', '1', '123', '2013-01-01 01:01:01');";
  
  stmt.executeUpdate(sql); 
  out.println("insert data success");

 }catch(Exception e){

  e.printStackTrace();

 }

%>

</body>

</html>


