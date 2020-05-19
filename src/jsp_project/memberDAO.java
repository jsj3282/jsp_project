package jsp_project;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class memberDAO {
	
	   private String url="jdbc:oracle:thin:@localhost:1521:xe";
	   private String user="jsp",pwd="1234";
	   private java.sql.Connection con;
	   private PreparedStatement ps;
	   private ResultSet rs;
	   

	   public memberDAO() {
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	      } catch (ClassNotFoundException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	   }
	   
	   public int register(String id, String password, String contact) {
		   
		   int i = 0;
		   String sql = "select * from member where id = " + id;
		   try {
			   con = DriverManager.getConnection(url, user, pwd);
			   ps = con.prepareStatement(sql);
			   rs = ps.executeQuery();
			   String id2 = null;
			   if(rs.next()) {
				   id2 = rs.getString("id");   
			   }
			   if(id2 == null) {
				   String sql2 = "insert into member(id, password, contact) values(?,?,?)";
				   try {
					   con = DriverManager.getConnection(url, user, pwd);
					   ps = con.prepareStatement(sql2);
					   ps.setString(1,  id);
					   ps.setString(2, password);
					   ps.setString(3,  contact);
					   ps.executeQuery();
					   i = 1;
					   
				   }catch(SQLException e) {
					   e.printStackTrace();
					   i = -1;
					   
				   }
			   }
			   
			   
		   }catch(SQLException e) {
			   i = -1;
		   }
		   return i;
	   }
	   
	   public int login(String id, String password) {
		   int i = 0;
		   String sql = "select * from member where id = " + id;
		   String id2 = null;
		   String password2 = null;
		   try {
			   con = DriverManager.getConnection(url, user, pwd);
			   ps = con.prepareStatement(sql);
			   rs = ps.executeQuery();
			   if(rs.next()) {
				   id2 = rs.getString("id");
				   password2 = rs.getString("password");
			   }
			   if(id2.equals(id)) {
				   if(password2.equals(password)){
					   i = 1;
				   }else {
					   i = 2;
				   }
				   
			   }else {
				   i = 0;
			   }
		   }catch(SQLException e) {
			   e.printStackTrace();
			   i = -1;
		   }
		   return i;
		   
	   }
	   
}
