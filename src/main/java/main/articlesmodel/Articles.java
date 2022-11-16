package main.articlesmodel;

import java.util.Date;

public class Articles {
	private int id_articles;  
	private Date publishDate;
	private String title_articles;
	private String summary_articles;
	
	public Articles(int id_articles, Date publishDate, String title_articles, String summary_articles,
			String content_articles) {
		super();
		this.id_articles = id_articles;
		this.publishDate = publishDate;
		this.title_articles = title_articles;
		this.summary_articles = summary_articles;
		this.content_articles = content_articles;
	}
	public int getId_articles() {
		return id_articles;
	}
	public void setId_articles(int id_articles) {
		this.id_articles = id_articles;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public String getTitle_articles() {
		return title_articles;
	}
	public void setTitle_articles(String title_articles) {
		this.title_articles = title_articles;
	}
	public String getSummary_articles() {
		return summary_articles;
	}
	public void setSummary_articles(String summary_articles) {
		this.summary_articles = summary_articles;
	}
	public String getContent_articles() {
		return content_articles;
	}
	public void setContent_articles(String content_articles) {
		this.content_articles = content_articles;
	}
	private String content_articles;
public Articles() {

}
}
