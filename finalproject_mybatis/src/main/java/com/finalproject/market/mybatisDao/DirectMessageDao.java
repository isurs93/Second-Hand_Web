package com.finalproject.market.mybatisDao;

import java.util.ArrayList;

import com.finalproject.market.mybatisDto.DirectMessageDto;


public interface DirectMessageDao {

	

	public void SendDirectMessage(String dm_senderSeq, String dm_reciverSeq, String dm_title, String dm_content);
	
	public ArrayList<DirectMessageDto> collectMyMessage(String dm_userid);
	
	public DirectMessageDto MyDirectMessage(int dm_seqno);
	
	public void SendReplyMessage(String dm_reciverid, String dm_senderid, String dm_title, String dm_content);
	
	public DirectMessageDto ReadSellerId(int seq);
	
}
