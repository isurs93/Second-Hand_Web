package com.finalproject.market.mybatisDao;

import java.util.ArrayList;

import com.finalproject.market.mybatisDto.MyProductListDto;



public interface myProductListDao {
	

	public ArrayList<MyProductListDto> bringMyProductList(String uid);
	
	public MyProductListDto DetailMyProductList(int board_seq);

	public void UploadMyItem(int board_useqno, String board_content, String board_title, String board_price);
	
	public int findMaxSeqNo(int board_useqno);
	
	public void UpdatePImage(int image_bseqno, String image_string);
	
	public void UpdateProductInfo(String board_title, String board_content, String board_price, int board_seqno);
	
	public void DeleteMyProduct(int board_seqno);
	
	public void updateMyImage(String image_string, int image_bseqno);
	
	public int findMaxImageSeqNo();
	
	public void InsertDealLocation(String location, int board_maxSeq);
	
	public void updateMyLocation(String location, int board_seqno);
	
	public void ChangeProductStatus(int board_seqno);
	
	public ArrayList<MyProductListDto> MyLikeList(int uid);
	
}
