package main.database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import main.Config;
import main.articlesmodel.Articles;

public class Database {
	
	static final String url="jdbc:mysql://localhost:3306/blog";
	static final String db_username=Config.db_user;
	static final String db_password=Config.db_pass;
	
	public static int insert(Articles articles) {
		if(articles.getId_articles()==0) {
			return -1;
		}
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url, db_username, db_password);
		Statement stmt=con.createStatement();
		Date date= new Date();
		java.text.SimpleDateFormat sd= new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String dt = sd.format(date);
		String query = "INSERT INTO articles(publishDate, title_articles, summary_articles, content_articles)VALUES('"+dt+"','"+articles.getTitle_articles()+"','"+articles.getSummary_articles()+"','"+articles.getContent_articles()+"')";
		stmt.execute(query);
		stmt.close();
		con.close();
		return 1;
		}catch(Exception ex){
			System.out.println("Database connection unsuccessful!!!!");
			return -1;
		}
	}
	public static Articles getById(int id_articles) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, db_username, db_password);
			Statement st = con.createStatement(); 
			String sql = "SELECT* FROM articles WHERE id_articles ="+id_articles;
			ResultSet rs = st.executeQuery(sql);
			rs.next();
			Articles result = new Articles(rs.getInt("id_articles"),rs.getDate("publishDate"),rs.getString("title_articles"),rs.getString("summary_articles"),rs.getString("content_articles"));
			rs.close();
			st.close();
			con.close();
			return result;
			}catch(Exception e2) {
				System.out.println("Couldn't connect to database");
				return null;
		}
	}
	
	
	public static int update(Articles article) { 
		if(article.getId_articles()==0) //if no article with this id exists
			return -1;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, db_username, db_password);
			Statement st = con.createStatement(); 
			Date date = new Date();
			java.text.SimpleDateFormat sdf = 
				     new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			String dte = sdf.format(date);
			String sql = "UPDATE articles SET publishDate='"+dte+"', title_articles = '"+article.getTitle_articles()+"', summary_articles= '"+article.getSummary_articles()+"', content_articles= '"+article.getContent_articles() +"'  WHERE id_articles = "+article.getId_articles();
			//System.out.println(sql);
			st.execute(sql);
			st.close();
			con.close();
			return 1;
		}catch(Exception e2) {
			System.out.println("Couldn't connect to database");
			return -1;
		}
	}
	
	public static int delete(int id) {
		if(id==0) //no such article
			return -1;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, db_username, db_password);
			Statement st = con.createStatement(); 
			String sql = "DELETE FROM articles WHERE id_articles = "+id;
	
			st.execute(sql);
			st.close();
			con.close();
			return 1;
		}catch(Exception e2) {
			System.out.println("Couldn't connect to database");
			return -1;
		}
	}
	
	public static ArrayList<Articles> getList(int numRows){
		ArrayList<Articles> result=new ArrayList<Articles>(numRows);  //numRows sets the limit on number of results to get from the query
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, db_username, db_password);
			Statement st = con.createStatement();    
			String sql = "SELECT* FROM articles ORDER BY publishDate DESC LIMIT "+ numRows;
			ResultSet rs = st.executeQuery(sql);   
			while(rs.next()) {
				result.add(new Articles(rs.getInt("id_articles"),rs.getDate("publishDate"),rs.getString("title_articles"),rs.getString("summary_articles"),rs.getString("content_articles")));
			}
			rs.close();
			st.close();
			con.close();
			}catch(Exception e) {
				System.out.println("Couldn't connect to database");
			}
		return result;
	}
	
}
