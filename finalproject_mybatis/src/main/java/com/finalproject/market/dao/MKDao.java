package com.finalproject.market.dao;

import java.util.ArrayList;

import com.finalproject.market.dto.userinfo;
import com.finalproject.market.mybatisDto.MainBoardListDto;

public interface MKDao {
	
	//�α���
	   public int userloginDao(String user_Id, String user_Password);
	   //ȸ������
	   public void newuserDao(String user_Id, String user_Password, String user_Name, String user_Telno, String user_Email1, String user_Email2, String user_Address1, String user_Address2, String user_Address3, String user_addresszipcode);
	   //ȸ������
	   public userinfo userdetailDao(String user_Id);
	   //ȸ������ ����
	   public void userupdatedetailDao(String user_Id, String user_Password, String user_Name, String user_Telno, String user_Email1, String user_Email2, String user_Address1, String user_Address2, String user_Address3, String user_addresszipcode);
	   //����seqno
	   public int getUserSeqno(String user_Id);
	   //�ߺ�üũ
	   public int useridcheckDao(String user_Id);
	   
	   //조회수 상품
	   public String[] GraphStatisticsDao();
	   
	   //조회수 그래프
	   public Integer[] GraphHitDao();
	   
	   //검색순위
	   public String[] searchDao();
	   
	   //좋아요
	   public void LikeDao(int user_Seqno, int board_Seqno);
	   
	   // 좋아요 sqeno찾기
	   public int findLikesSeqno(int board_seqno, int user_seqno);
	   
	   // 좋아요 삭제
	   public void deleteLikes(int likes_seqno);
	   
	   		//좋아요 insert
	      public void LikeinsertDao(int like_bSeqno, int like_uSeqno);
	      
	      // 좋아요 찾기(가로안에 변수는 쿼리문 실행시 필요한 변수 )
	      public Integer LikefindDao(Integer like_bSeqno, Integer like_uSeqno);
	      
	      // 좋아요 삭제
	      public int DeleteLike(int like_Seqno);
	      
	      //로그인할때 좋아요
	      public int findchecklike(int usernumber, int usernumber2);
	      
	      // 아이디 찾기
	      public userinfo findMyId(String username, String usertel);
	      
	      // 비밀번호 찾기
	      public userinfo findMyPw(String userid, String usertel);
	      
	    //랭킹검색
	      public ArrayList<MainBoardListDto> SearchResult(String SearchResult,String SearchResult1,String SearchResult2,String SearchResult3);
	      
		   //중복체크
		   public int idcheckDao(String user_Id);
		   
		   //거래현황 그래프 
		   public String[] TransactionArea();
		   //거래현황 숫자
		   public Integer[] TransactionAreanum();
		   
		   //좋아요 순위 그래프 타이틀
		   public String[] FavoriteRanking();
		   
		   //좋아요 순위 그래프 숫자
		   public Integer[] FavoriteRankingnum();
		   
	   
}
