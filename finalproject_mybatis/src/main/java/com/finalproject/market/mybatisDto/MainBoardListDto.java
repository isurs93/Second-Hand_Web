package com.finalproject.market.mybatisDto;

public class MainBoardListDto {

	int image_seqno;
	int image_bseqno;
	String image_string;
	int board_seqno;
	int board_hit;
	String board_title;
	String board_price;
	int board_useqno;
	String deal_location;
	String board_isDone;
	
	public MainBoardListDto() {
		// TODO Auto-generated constructor stub
	}
	
	public MainBoardListDto(int image_seqno, int image_bseqno, String image_string, int board_seqno, int board_hit,
			String board_title, String board_price, String deal_location, String board_isDone) {
		super();
		this.image_seqno = image_seqno;
		this.image_bseqno = image_bseqno;
		this.image_string = image_string;
		this.board_seqno = board_seqno;
		this.board_hit = board_hit;
		this.board_title = board_title;
		this.board_price = board_price;
		this.deal_location = deal_location;
		this.board_isDone = board_isDone;
	}

	public MainBoardListDto(int image_seqno, String image_string, int board_seqno, String board_title,
			String board_price, int board_useqno, String deal_location, String board_isDone) {
		super();
		this.image_seqno = image_seqno;
		this.image_string = image_string;
		this.board_seqno = board_seqno;
		this.board_title = board_title;
		this.board_price = board_price;
		this.board_useqno = board_useqno;
		this.deal_location = deal_location;
		this.board_isDone = board_isDone;
	}
	

	
	public MainBoardListDto(String image_string, int board_seqno, int board_hit, String board_price, String deal_location, String board_isDone) {
		super();
		this.image_string = image_string;
		this.board_seqno = board_seqno;
		this.board_hit = board_hit;
		this.board_price = board_price;
		this.deal_location = deal_location;
		this.board_isDone = board_isDone;
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

	public int getBoard_useqno() {
		return board_useqno;
	}

	public void setBoard_useqno(int board_useqno) {
		this.board_useqno = board_useqno;
	}

	public int getImage_seqno() {
		return image_seqno;
	}

	public void setImage_seqno(int image_seqno) {
		this.image_seqno = image_seqno;
	}

	public int getImage_bseqno() {
		return image_bseqno;
	}

	public void setImage_bseqno(int image_bseqno) {
		this.image_bseqno = image_bseqno;
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
	
	
	
	
	
	
	
}
