package com.finalproject.market.mybatisDto;

public class ProductListDto {

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
	String deal_location;
	String board_isDone;
	int countLike;
	
	public ProductListDto() {
		// TODO Auto-generated constructor stub
	}

	public ProductListDto(String board_Content, String image_string, int board_hit, String board_title,
			String board_price, String user_id, int board_useqno, int board_seqno, String deal_location, String board_isDone) {
		super();
		this.board_Content = board_Content;
		this.image_string = image_string;
		this.board_hit = board_hit;
		this.board_title = board_title;
		this.board_price = board_price;
		this.user_id = user_id;
		this.board_useqno = board_useqno;
		this.board_seqno = board_seqno;
		this.deal_location = deal_location;
		this.board_isDone = board_isDone;
	}


	public ProductListDto(int board_seqno, String user_id, String reply_content) {
		super();
		this.board_seqno = board_seqno;
		this.user_id = user_id;
		this.reply_content = reply_content;
	}

	
	

	public ProductListDto(int countLike) {
		super();
		this.countLike = countLike;
	}
	
	
	

	public int getcountLike() {
		return countLike;
	}

	public void setcountLike(int countLike) {
		this.countLike = countLike;
	}

	public String getBoard_isDone() {
		return board_isDone;
	}

	public void setBoard_isDone(String board_isDone) {
		this.board_isDone = board_isDone;
	}

	public String getDeal_location() {
		return deal_location;
	}

	public void setDeal_location(String deal_location) {
		this.deal_location = deal_location;
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
