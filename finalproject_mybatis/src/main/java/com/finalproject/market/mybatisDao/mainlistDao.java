package com.finalproject.market.mybatisDao;

import java.util.ArrayList;

import com.finalproject.market.mybatisDto.MainBoardListDto;
import com.finalproject.market.mybatisDto.ProductReplyDto;




public interface mainlistDao {

	public ArrayList<MainBoardListDto> bringMainList();
	
	public ProductReplyDto bringReceiverSeqNo(String user_id, int board_seq);
	
	public ArrayList<MainBoardListDto> listForSearch(String the_word1,String the_word2,String the_word3,String the_word4);
	//public ArrayList<MainBoardListDto> listForSearch(String the_word1);
	
	public void InsertSearchedData(String seach_data);
}
