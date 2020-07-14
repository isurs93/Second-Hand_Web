package com.finalproject.market.mybatisDto;

import java.security.Timestamp;

public class ProductReplyDto {

	String board_Content;
	int image_seqno;
	String image_string;
	int board_seqno;
	int board_hit;
	String board_title;
	String board_price;
	String user_id;
	int board_useqno;
	String reply_content;
	Timestamp reply_date;
	int reply_seqno;
	
	public ProductReplyDto() {
		// TODO Auto-generated constructor stub
	}
	
	public ProductReplyDto(String board_Content, String image_string, int board_hit, String board_title,
			String board_price, String user_id, int board_useqno) {
		super();
		this.board_Content = board_Content;
		this.image_string = image_string;
		this.board_hit = board_hit;
		this.board_title = board_title;
		this.board_price = board_price;
		this.user_id = user_id;
		this.board_useqno = board_useqno;
	}

	public ProductReplyDto(int board_seqno, String user_id, String reply_content, Timestamp reply_date, int reply_seqno) {
		super();
		this.board_seqno = board_seqno;
		this.user_id = user_id;
		this.reply_content = reply_content;
		this.reply_date = reply_date;
		this.reply_seqno = reply_seqno;
	}
	
	

	public ProductReplyDto(String user_id) {
		super();
		this.user_id = user_id;
	}

	public Timestamp getReply_date() {
		return reply_date;
	}

	public void setReply_date(Timestamp reply_date) {
		this.reply_date = reply_date;
	}

	public int getReply_seqno() {
		return reply_seqno;
	}

	public void setReply_seqno(int reply_seqno) {
		this.reply_seqno = reply_seqno;
	}

	public String getBoard_Content() {
		return board_Content;
	}

	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}

	public int getImage_seqno() {
		return image_seqno;
	}

	public void setImage_seqno(int image_seqno) {
		this.image_seqno = image_seqno;
	}

	public String getImage_string() {
		return image_string;
	}

	public void setImage_string(String image_string) {
		this.image_string = image_string;
	}

	public int getBoard_seqno() {
		return board_seqno;
	}

	public void setBoard_seqno(int board_seqno) {
		this.board_seqno = board_seqno;
	}

	public int getBoard_hit() {
		return board_hit;
	}

	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_price() {
		return board_price;
	}

	public void setBoard_price(String board_price) {
		this.board_price = board_price;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getBoard_useqno() {
		return board_useqno;
	}

	public void setBoard_useqno(int board_useqno) {
		this.board_useqno = board_useqno;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	
	
	
	
}
