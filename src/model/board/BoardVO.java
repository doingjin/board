package model.board;

import java.sql.Date;

public class BoardVO {
	
	private int num;
	private String id;
	private String title;
	private String content;
	private Date bdate;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", id=" + id + ", title=" + title + ", content=" + content + ", bdate=" + bdate
				+ "]";
	}
	
}
