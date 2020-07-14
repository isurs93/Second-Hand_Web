package com.finalproject.market.mybatisDao;

import java.util.ArrayList;

import com.finalproject.market.mybatisDto.ProductListDto;
import com.finalproject.market.mybatisDto.ProductReplyDto;
import com.finalproject.market.mybatisDto.SellerProductListDto;

public interface ProductListDao {

	public ProductListDto BringProductList(int seq);
	
	public ArrayList<ProductReplyDto> BringReplyList(int seq);
	
	public void AddViewCount(int seq);
	
	public int FindBoardSeqno(int seq);
	
	public ArrayList<SellerProductListDto> CollectSellerList(int seq);
	
	public ProductListDto LikeCount(int seq);
	
	
	public int LikeCountss(int seq);
}
