package com.finalproject.market.mybatisDto;

import java.sql.Timestamp;

public class DirectMessageDto {

	String dm_title;
	int dm_reciverSeq;
	int dm_senderSeq;
	String dm_content;
	Timestamp dm_insertdate;
	int dm_seqno;
	String dm_reciverid;
	String dm_senderid;
	
	public DirectMessageDto() {
		// TODO Auto-generated constructor stub
	}

	public DirectMessageDto(String dm_title, String dm_content, Timestamp dm_insertdate, String dm_reciverid,
			String dm_senderid) {
		super();
		this.dm_title = dm_title;
		this.dm_content = dm_content;
		this.dm_insertdate = dm_insertdate;
		this.dm_reciverid = dm_reciverid;
		this.dm_senderid = dm_senderid;
	}

	public DirectMessageDto(String dm_title, Timestamp dm_insertdate, int dm_seqno, String dm_senderid) {
		super();
		this.dm_title = dm_title;
		this.dm_insertdate = dm_insertdate;
		this.dm_seqno = dm_seqno;
		this.dm_senderid = dm_senderid;
	}

	public DirectMessageDto(String dm_senderid) {
		super();
		this.dm_senderid = dm_senderid;
	}

	public String getDm_title() {
		return dm_title;
	}

	public void setDm_title(String dm_title) {
		this.dm_title = dm_title;
	}

	public int getDm_reciverSeq() {
		return dm_reciverSeq;
	}

	public void setDm_reciverSeq(int dm_reciverSeq) {
		this.dm_reciverSeq = dm_reciverSeq;
	}

	public int getDm_senderSeq() {
		return dm_senderSeq;
	}

	public void setDm_senderSeq(int dm_senderSeq) {
		this.dm_senderSeq = dm_senderSeq;
	}

	public String getDm_content() {
		return dm_content;
	}

	public void setDm_content(String dm_content) {
		this.dm_content = dm_content;
	}

	public Timestamp getDm_insertdate() {
		return dm_insertdate;
	}

	public void setDm_insertdate(Timestamp dm_insertdate) {
		this.dm_insertdate = dm_insertdate;
	}

	public int getDm_seqno() {
		return dm_seqno;
	}

	public void setDm_seqno(int dm_seqno) {
		this.dm_seqno = dm_seqno;
	}

	public String getDm_reciverid() {
		return dm_reciverid;
	}

	public void setDm_reciverid(String dm_reciverid) {
		this.dm_reciverid = dm_reciverid;
	}

	public String getDm_senderid() {
		return dm_senderid;
	}

	public void setDm_senderid(String dm_senderid) {
		this.dm_senderid = dm_senderid;
	}

	
	
	
	
	
	
	
}
