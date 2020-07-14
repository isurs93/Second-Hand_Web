package com.finalproject.market.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.naming.Context;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.taglibs.standard.extra.spath.RelativePath;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finalproject.market.dao.ConnectFTP;
import com.finalproject.market.dao.FTP_UploadFile;
import com.finalproject.market.dao.MKDao;
import com.finalproject.market.mybatisDao.DirectMessageDao;
import com.finalproject.market.mybatisDao.ProductListDao;
import com.finalproject.market.mybatisDao.mainlistDao;
import com.finalproject.market.mybatisDao.myProductListDao;
import com.finalproject.market.mybatisDto.DirectMessageDto;
import com.finalproject.market.mybatisDto.MainBoardListDto;
import com.finalproject.market.mybatisDto.MyProductListDto;
import com.finalproject.market.mybatisDto.ProductListDto;
import com.finalproject.market.mybatisDto.ProductReplyDto;
import com.finalproject.market.mybatisDto.SellerProductListDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



/**
 * Handles requests for the application home page.
 */
@Controller
public class MainControllerSB {
	
	private static final Logger logger = LoggerFactory.getLogger(MainControllerSB.class);
	
	
	@Autowired
	private SqlSession sqlSession;
	
	ConnectFTP connectFTP;
	String urlAddr = "http://172.20.10.2:8080/test/";
	Context context;
	String viewPage = null;
	int error = 0;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	//아이디 중복체크 
	@RequestMapping("/idcheck")
	public String useridcheck(HttpServletRequest request, Model model, HttpSession Session) {
		
		MKDao mkdao = sqlSession.getMapper(MKDao.class);
		String user_Id = request.getParameter("id");
		int idCheck = mkdao.idcheckDao(user_Id);
		System.out.println("idcheck"+idCheck);
		
		if (idCheck == 1){
			request.setAttribute("count", 1);		
			System.out.println("ifidCheck:"+idCheck);
		return "newuser";
			
 		}else {
 			request.setAttribute("count", 0);
 			System.out.println("elseidCheck:"+idCheck);
 		return "newuser";
	}
	
	
	}
	
	// list 메인 화면 불러옴 전체 상품을 불러오지만 팔린 상품 deletedata 가 있는 것은 안불러옴
	@RequestMapping("/login")
	public String login(Model model, HttpServletRequest request, HttpSession Session) {

		return "login";
	}
	//ȸ������ ������
	@RequestMapping("/newuser")
	public String newuser(Model model, HttpServletRequest request, HttpSession Session) {
	
		return "newuser";
	}
	
	@RequestMapping("/signup")
	   public String userSingup(Model model, HttpServletRequest request, HttpSession Session) {
	      
	      String user_Id = request.getParameter("id");
	      String user_Password = request.getParameter("pw");
	      String user_Name = request.getParameter("name");
	      String user_Telno = request.getParameter("tel1") + request.getParameter("tel2") + request.getParameter("tel3");
	      String user_Email1 = request.getParameter("email1");
	      String user_Email2 = request.getParameter("email2");
	      String user_Address1 = request.getParameter("extra");
	      String user_Address2 = request.getParameter("address1");
	      String user_Address3 = request.getParameter("address2");
	      String user_Addresszipcode = request.getParameter("zipcode");
	                  
	      MKDao mkdao = sqlSession.getMapper(MKDao.class);
	      mkdao.newuserDao(user_Id, user_Password, user_Name, user_Telno, user_Email1, user_Email2, user_Address1, user_Address2, user_Address3, user_Addresszipcode);

	      return "redirect:login";
	   }
	
	//실시간검색순위 하이퍼링크
	   @RequestMapping("/SearchResult")
	   public String SearchResult(HttpServletRequest request, Model model, HttpSession session) {
	      
	      //the word1 = 검색창에 입력 값. 
	      String searchresult = request.getParameter("msearch");
//	      String the_word2 = request.getParameter("search");
//	      String the_word3 = request.getParameter("search");
//	      String the_word4 = request.getParameter("search");
	      System.out.println("searching_word === "+searchresult);
	      
	      MKDao searchDao = sqlSession.getMapper(MKDao.class);
	      ArrayList<MainBoardListDto> searchdto = null;
	      searchdto = searchDao.SearchResult(searchresult, searchresult, searchresult, searchresult);
	      
	      String result = "redirect:list";
	      // 검색값을 통해 불러온 값이 0이 아니면 화면에 해당 정보를 띄어주고, 그게 아닐 시 화면은 메인화면으로 넘어간다. 
	      if(searchdto.size() != 0) {   
	         //searchdto = searchDao.listForSearch(the_word1);
	         request.setAttribute("resultfor_search", searchdto);
	         result = "ResultForSearch";      
	         System.out.println("searchDao");
	      }else {
	         System.out.println("searchDao is null");
	         return "tes";
	      }
	      
	      return result;
	   }
	
	//실시간 검색 스크롤
	@RequestMapping("/RearTimeRanking")   
	   public String searchrank(Model model, HttpServletRequest request, HttpSession Session) {
	      MKDao searchdata = sqlSession.getMapper(MKDao.class);
	      String [] msearch;
	      System.out.println("search dao before");
	      msearch = searchdata.searchDao();
	      for(int i=0;i<msearch.length;i++) {
	         System.out.println(msearch[i]);
	      }
	      request.setAttribute("msearch", msearch[0]);
	      request.setAttribute("msearch1", msearch[1]);
	      request.setAttribute("msearch2", msearch[2]);
	      request.setAttribute("msearch3", msearch[3]);
	      request.setAttribute("msearch4", msearch[4]);
	      request.setAttribute("msearch5", msearch[5]);
	      request.setAttribute("msearch6", msearch[6]);
	      request.setAttribute("msearch7", msearch[7]);
	      request.setAttribute("msearch8", msearch[8]);
	      request.setAttribute("msearch9", msearch[9]);
	      System.out.println("end");
	      return "RearTimeRanking";
	   }
	
	//찜 상품순위 타이틀
	@RequestMapping("/FavoriteRanking")
	public String FavoriteRanking(HttpServletRequest request, Model model, HttpSession session) {
		MKDao fRanking = sqlSession.getMapper(MKDao.class);
		String [] franking;
		franking = fRanking.FavoriteRanking();
		request.setAttribute("fRanking", franking[0]);
		request.setAttribute("fRanking1", franking[1]);
		request.setAttribute("fRanking2", franking[2]);
		request.setAttribute("fRanking3", franking[3]);
		request.setAttribute("fRanking4", franking[4]);
		request.setAttribute("fRanking5", franking[5]);
		request.setAttribute("fRanking6", franking[6]);
		request.setAttribute("fRanking7", franking[7]);
		request.setAttribute("fRanking8", franking[8]);
		request.setAttribute("fRanking9", franking[9]);
		System.out.println(franking[0]);
		
		Integer [] frankingnum;
		frankingnum = fRanking.FavoriteRankingnum();
		request.setAttribute("fRankingnum", frankingnum[0]);
		request.setAttribute("fRankingnum1", frankingnum[1]);
		request.setAttribute("fRankingnum2", frankingnum[2]);
		request.setAttribute("fRankingnum3", frankingnum[3]);
		request.setAttribute("fRankingnum4", frankingnum[4]);
		request.setAttribute("fRankingnum5", frankingnum[5]);
		request.setAttribute("fRankingnum6", frankingnum[6]);
		request.setAttribute("fRankingnum7", frankingnum[7]);
		request.setAttribute("fRankingnum8", frankingnum[8]);
		request.setAttribute("fRankingnum9", frankingnum[9]);
		return "FavoriteRanking";
	}
	
	//판매지역순위
	@RequestMapping("/TransactionArea")
	public String TransactionArea(HttpServletRequest request, Model model, HttpSession session) {
		MKDao Area = sqlSession.getMapper(MKDao.class);
		String [] tArea;
		tArea = Area.TransactionArea();
		request.setAttribute("mArea", tArea[0]);
		request.setAttribute("mArea1", tArea[1]);
		request.setAttribute("mArea2", tArea[2]);
		request.setAttribute("mArea3", tArea[3]);
		request.setAttribute("mArea4", tArea[4]);
		request.setAttribute("mArea5", tArea[5]);
		request.setAttribute("mArea6", tArea[6]);
		request.setAttribute("mArea7", tArea[7]);
		request.setAttribute("mArea8", tArea[8]);
		request.setAttribute("mArea9", tArea[9]);
		System.out.println("tArea:"+tArea[0]);
		
		Integer [] tAreanum;
		tAreanum = Area.TransactionAreanum();
		request.setAttribute("mtArea", tAreanum[0]);
		request.setAttribute("mtArea1", tAreanum[1]);
		request.setAttribute("mtArea2", tAreanum[2]);
		request.setAttribute("mtArea3", tAreanum[3]);
		request.setAttribute("mtArea4", tAreanum[4]);
		request.setAttribute("mtArea5", tAreanum[5]);
		request.setAttribute("mtArea6", tAreanum[6]);
		request.setAttribute("mtArea7", tAreanum[7]);
		request.setAttribute("mtArea8", tAreanum[8]);
		request.setAttribute("mtArea9", tAreanum[9]);
		
		System.out.println(tAreanum[0]);
		
		
		
		
		return "TransactionArea";
	}
	
	
	   //그래프 통계
    @RequestMapping("/GraphStatistics")
    public String GraphStatistics(HttpServletRequest request, Model model, HttpSession session) {
       MKDao Graph = sqlSession.getMapper(MKDao.class);
       String [] mtitle ;
       mtitle =  Graph.GraphStatisticsDao();
//       ArrayList<String> mtitle = new ArrayList<String>();
//       ArrayList<Integer> hit = new ArrayList<Integer>();
       Integer [] hit;
       hit = Graph.GraphHitDao();
       request.setAttribute("mtitle", mtitle[0]);
       request.setAttribute("mtitle1", mtitle[1]);
       request.setAttribute("mtitle2", mtitle[2]);
       request.setAttribute("mtitle3", mtitle[3]);
       request.setAttribute("mtitle4", mtitle[4]);
       request.setAttribute("mtitle5", mtitle[5]);
       request.setAttribute("mtitle6", mtitle[6]);
       request.setAttribute("mtitle7", mtitle[7]);
       request.setAttribute("mtitle8", mtitle[8]);
       request.setAttribute("mtitle9", mtitle[9]);
       
       request.setAttribute("hit", hit[0]);
       request.setAttribute("hit1", hit[1]);
       request.setAttribute("hit2", hit[2]);
       request.setAttribute("hit3", hit[3]);
       request.setAttribute("hit4", hit[4]);
       request.setAttribute("hit5", hit[5]);
       request.setAttribute("hit6", hit[6]);
       request.setAttribute("hit7", hit[7]);
       request.setAttribute("hit8", hit[8]);
       request.setAttribute("hit9", hit[9]);
       
       return "GraphStatistics";
    }
	
	
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model, HttpSession Session) {
		Session.invalidate();
	   
	    return "redirect:list";
	}
	
	//�α��� ����
	@RequestMapping("/actionlogin")
	public String loginaction(HttpServletRequest request, Model model, HttpSession Session) {
		MKDao mkdao = sqlSession.getMapper(MKDao.class);

		String user_Id = request.getParameter("id");
		String user_Password = request.getParameter("pw");

		int idCheck = mkdao.userloginDao(user_Id, user_Password);

		
		if (idCheck == 1){
			Session.setAttribute("uid", user_Id);
			
			return "redirect:getuserseqno";
			
 		}else {
 			request.setAttribute("uid", "0");
 			
 			return "login";
 		}
	}
	
	//�������ѹ� �������� �Ѱ���
	@RequestMapping("/getuserseqno")
	public String getUserSeqno(HttpServletRequest request, Model model, HttpSession Session) {
		
		MKDao mkdao = sqlSession.getMapper(MKDao.class);
		String userId = (String) Session.getAttribute("uid");
		int userSeqno = mkdao.getUserSeqno(userId);
		Session.setAttribute("useq", userSeqno);

	    return "redirect:list";
	}
	
	//�������� �ҷ�����
	@RequestMapping("/userdetail")
	public String userdetail(Model model, HttpServletRequest request, HttpSession Session) {
		String user_Id = (String) Session.getAttribute("uid");
		MKDao mkdao = sqlSession.getMapper(MKDao.class);
		model.addAttribute("userdetail", mkdao.userdetailDao(user_Id));
		
		return "userdetail";
	}

	//�������� ����
	@RequestMapping("/userupdatedetail")
	public String userupdatedetail(Model model, HttpServletRequest request, HttpSession Session) {		
		String user_Id = (String) Session.getAttribute("uid");
		String user_Password = request.getParameter("pw");
		String user_Name = request.getParameter("name");
		String user_Telno = request.getParameter("tel");
		String user_Email1 = request.getParameter("email1");
		String user_Email2 = request.getParameter("email2");
		String user_Address1 = request.getParameter("extra");
		//extra�� ����� �������ּ� X
		String user_Address2 = request.getParameter("address1");
		String user_Address3 = request.getParameter("address2");
		String user_Addresszipcode = request.getParameter("zipcode");
		System.out.println("detailuseraddress:" + user_Addresszipcode);					
		MKDao mkdao = sqlSession.getMapper(MKDao.class);
		mkdao.userupdatedetailDao(user_Id, user_Password, user_Name, user_Telno, user_Email1, user_Email2, user_Address1, user_Address2, user_Address3, user_Addresszipcode);

		return "redirect:userdetail";
	
	}

//	@RequestMapping("/list")
//	public String list() {
//		
//		return "list";
//	}
	
	
	 //좋아요
    @RequestMapping("/Like")
    public String Like(HttpServletRequest request, Model model, HttpSession session) {

       int like_uSeqno = (Integer) session.getAttribute("useq");
       System.out.println("userSeqno:"+like_uSeqno);
       
       int like_bSeqno = Integer.parseInt(request.getParameter("board_Seqno"));
       System.out.println("boardSeqno:"+like_bSeqno);
       
       MKDao find = sqlSession.getMapper(MKDao.class);
       Integer like_SeqnoT = find.LikefindDao(like_bSeqno, like_uSeqno);

       System.out.println("like_SeqnoT:"+like_SeqnoT);
       System.out.println("=====여기까지======왔다");

       if(like_SeqnoT == null) {
          
          
          MKDao insert = sqlSession.getMapper(MKDao.class);
          insert.LikeinsertDao(like_bSeqno, like_uSeqno);
          System.out.println("if0bseqno:"+like_bSeqno);
          System.out.println("if0useqno:"+like_uSeqno);
          
       }else {
          System.out.println("널이 아님");
          MKDao delete = sqlSession.getMapper(MKDao.class);
          delete.DeleteLike(like_SeqnoT);
          System.out.println("elsedeletelike_Seqno:"+like_SeqnoT);
          
       }
       
       
       
       return "redirect:DetailProductList?board_seq="+like_bSeqno;
    }
    
    
    @RequestMapping("/FindMyId")
    public String FindMyId(HttpServletRequest request, Model model, HttpSession session) {
    	
    	String user_id = request.getParameter("name");
    	String user_tel = request.getParameter("tel");
    	MKDao findidDao = sqlSession.getMapper(MKDao.class);
    	model.addAttribute("myId", findidDao.findMyId(user_id, user_tel));
    	
    	return "myId";	
    }
    
    @RequestMapping("/FindMyPw")
    public String FindMyPw(HttpServletRequest request, Model model, HttpSession session) {
    	
    	String user_id = request.getParameter("id");
    	String user_tel = request.getParameter("tel");
    	MKDao findidDao = sqlSession.getMapper(MKDao.class);
    	model.addAttribute("myPw", findidDao.findMyPw(user_id, user_tel));
    	
    	return "myPw";	
    }
	
    @RequestMapping("userfind")
    public String userfind(HttpServletRequest request, Model model, HttpSession session) {
    
	return "userfind";
    }
	
	// ------------------ 성빈 -------------------------------------------------------------
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model, HttpSession session) {
		mainlistDao dao = sqlSession.getMapper(mainlistDao.class);
		ArrayList<MainBoardListDto> maindtos = null;
		
		
		
		
		maindtos = dao.bringMainList();
		String aaaa = maindtos.get(0).getBoard_title();
		System.out.println("aaaaaa == "+aaaa);
		request.setAttribute("MainList", maindtos);
		return "MainBoardSB";
	}
	// 메인화면에서 상품을 클릭했을 때 해당 제품의 상세정보를 가져옴 
	@RequestMapping("/DetailProductList")
	public String DetailProductList(HttpServletRequest request, Model model, HttpSession session) {
		
		ProductListDao pdao = sqlSession.getMapper(ProductListDao.class);
	      model.addAttribute("the_productInfo", pdao.BringProductList(Integer.parseInt(request.getParameter("board_seq"))));
	   
	      ProductListDao useqDao = sqlSession.getMapper(ProductListDao.class);
	      int board_seqnono = useqDao.FindBoardSeqno(Integer.parseInt(request.getParameter("board_seq")));
	      
	      ProductListDao sellerDao = sqlSession.getMapper(ProductListDao.class);
	      ArrayList<SellerProductListDto> SellerDto = null;
	      SellerDto = sellerDao.CollectSellerList(board_seqnono);
	      request.setAttribute("the_sellerProduct", SellerDto);
	      
	      ProductListDao likeDao = sqlSession.getMapper(ProductListDao.class);
	     
	   // likeDao.LikeCount(Integer.parseInt(request.getParameter("board_seq")));
	      model.addAttribute("CountLike", likeDao.LikeCount(Integer.parseInt(request.getParameter("board_seq"))));
	     
	   
	      ProductListDao acdao = sqlSession.getMapper(ProductListDao.class);
	      acdao.AddViewCount(Integer.parseInt(request.getParameter("board_seq")));
	      
	      
	      int usernumber;
	            if(session.getAttribute("useq") != null) {
	               usernumber =Integer.parseInt(session.getAttribute("useq").toString());
	               System.out.println("&&&&&&"+usernumber);
	               MKDao find = sqlSession.getMapper(MKDao.class);
	               int count = find.findchecklike(Integer.parseInt(request.getParameter("board_seq")),usernumber);
	               request.setAttribute("count", count);
	               System.out.println("count:"+count);
	            }else {
	               request.setAttribute("count", 3);
	            }
	   
		return "DetailProductList";
	}
	// 마이페이지에서 내 상품 버튼을 클릭하면 내 상품 보기가 나옴 여기에서는 모든 상품이 다 뜬다. 	
	@RequestMapping("/MyProductList")
	public String MyProductList(HttpServletRequest request, Model model, HttpSession session) {
		//String uid = (String) session.getAttribute("uid");
		// uid 는 로그인 값이다. 
		String uid = (String) session.getAttribute("uid");
		myProductListDao mpdao = sqlSession.getMapper(myProductListDao.class);
		ArrayList<MyProductListDto> myProductdtos = null;
		myProductdtos = mpdao.bringMyProductList(uid);
		request.setAttribute("myProductList", myProductdtos);
		return "MyProductList";
	}
	// 내 상품에서 제품을 클릭했을 때 제품에 대한 상세정보가 뜬다. 제품을 불러오는 값은 board_seqno 이다. 
	@RequestMapping("/DetailMyProductList")
	public String DetailMyProductList(HttpServletRequest request, Model model, HttpSession session) {
		myProductListDao daos = sqlSession.getMapper(myProductListDao.class);
		model.addAttribute("detail_productInfo", daos.DetailMyProductList(Integer.parseInt(request.getParameter("board_seq"))));
		
		return "DetailMyProductList";
	}
	
	// 쪽지를 보내기 위한 jsp 쪽지를 보내기 위해 판매자의 seqno 와 게시물 seqno 가 필요하므로 가져온다. 
	@RequestMapping("/sendDMessageFrom")
	public String sendDMessageFrom(HttpServletRequest request, Model model, HttpSession session){
		
		
		String ownerseq = request.getParameter("ownerseq");
		System.out.println("111111 ==== "+ownerseq);
		String board_seq = request.getParameter("board_seq");
		System.out.println("2222 ===== "+board_seq);
		
		int board_seqNo = Integer.parseInt(board_seq);
		mainlistDao daoa = sqlSession.getMapper(mainlistDao.class);
		 model.addAttribute("owner_id", daoa.bringReceiverSeqNo(ownerseq, board_seqNo));
		
		
		return "sendDirectMessageForm";
		
	}

	// 메세지를 보내면 Insert로 DB에 해당 정보를 저장한다. 저장하는 목록은 내 아이디 상대방 아이디 제목 내용이다. 
	@RequestMapping("/InsertMessage")
	public String InsertMessage(HttpServletRequest request, Model model, HttpSession session) {
		System.out.println("sdaasfsdf");
		String user_Id = (String)session.getAttribute("uid");
		String ownerSeq = request.getParameter("ownerseq");
		System.out.println(ownerSeq+" === ownerSeqNumber");
		
		//int dm_reciverSeq = Integer.parseInt(request.getParameter("ownerSeq"));
		//String dm_reciverSeq = 
		//int dm_senderSeq = Integer.parseInt(request.getParameter("uid"));
		String dm_reciverSeq = request.getParameter("owner_id");
		System.out.println("dm_reciverSeq === "+ dm_reciverSeq);
		
		String dm_title = request.getParameter("dmTitle");
		System.out.println(dm_title);
		String dm_content = request.getParameter("dmMemo");
		System.out.println(dm_content);
		DirectMessageDao dao = sqlSession.getMapper(DirectMessageDao.class);
		dao.SendDirectMessage(user_Id, dm_reciverSeq, dm_title, dm_content);

		
		return "redirect:list";
	}
	// 쪽지함을 보기. 내 아이디를 session 으로 가져와 그 값을 넣어줘 나에게 온 쪽지를 최신순으로 뽑아준다. 
	@RequestMapping("/MyDmbox")
	public String MyDmbox(HttpServletRequest request, Model model, HttpSession session) {
		
		String uid = (String) session.getAttribute("uid");
		DirectMessageDao dmdao = sqlSession.getMapper(DirectMessageDao.class);
		ArrayList<DirectMessageDto> dmdtos = null;
		dmdtos = dmdao.collectMyMessage(uid);
		request.setAttribute("dm_message", dmdtos);
		return "MyDmBox";
	}
	//쪽지함에서 쪽지를 클릭했을 시 그 해당 상세정보를 가져온다. 여기서 가져오는 값은 상대방 아이디, 내용, 제목이다. 
	@RequestMapping("/DetailMyDirectMessage")
	public String DetailMyDirectMessage(HttpServletRequest request, Model model, HttpSession session) {
		
		int dm_seqno = Integer.parseInt(request.getParameter("dm_seqno"));
		DirectMessageDao dmdao = sqlSession.getMapper(DirectMessageDao.class);
		model.addAttribute("D_Message", dmdao.MyDirectMessage(dm_seqno));
		
		return "MyDirectMessage";
	}
	// 제품을 게시판에 올리기 위한 jsp이다. 다른거 필요없음 
	@RequestMapping("/ProductUploadForm")
	public String ProductUploadForm(HttpServletRequest request, Model model, HttpSession session) {
		
		
		return "ProductUploadForm";
	}
	// ProductUploadForm 에 입력된 입력값을 request.getParameter 로 가져와서 DB에 Insert 해준다. 여기서 중요한 점은 Image 와 Board 테이블이 따로 있기에 Insert를 먼저하고
	// 바로 select로 max number를 들고 옴으로 그 board_seqno 값과 이미지 이름을 다시 image 테이블에 Insert 해준다. 
	@RequestMapping("/UploadItem")
	public String UploadItem(HttpServletRequest request, Model model, HttpSession session) {
		
		
		String myIp = "192.168.0.82";
		String FTPid = "sb";
		String FTPpw = "1111";
		int FTPport = 21;
		MultipartRequest multipartRequest = null;
		String desDirectory = "ftp://192.168.0.82/test/";
		//String desDirectory = "/test/";

		
		
		try {
	        //System.out.println("urlAddddrrrr === "+ uploadPath);
			String Ftpdirectory = request.getSession().getServletContext().getRealPath("/resources/");
	        String directory = request.getSession().getServletContext().getRealPath("/resources/");
			
						
			connectFTP = new ConnectFTP();
			connectFTP.ftpConnect(myIp, FTPid, FTPpw, FTPport);
						
	        int maxSize = 1024*1024*100;
			System.out.println("실제경로 : " + directory);
			System.out.println("Ftp 주소 : " + Ftpdirectory);
				
			String encoding = "UTF-8";
			// FTP 설정을 위한 
	        File file = null;
			
			multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
					new DefaultFileRenamePolicy());
			
			file = multipartRequest.getFile("file");

		    File isDir = new File(directory);
		    if(!isDir.isDirectory()){
		    	System.out.println("디렉토리가 없습니다. 디렉토리를 새로 생성합니다.");
		    	isDir.mkdir();
		    }
		    
//			String uploadPath = request.getRealPath("Img2");
//			System.out.println("upload Path : " + uploadPath);
//			int index = urlAddr.lastIndexOf("/");     //전체 urladdress에서 이미지 파일명만 받기
//	        String imgName = urlAddr.substring(index+1);         
//	        System.out.println("image Name : " + imgName);
		    
		    
		    int board_useqno = (Integer) session.getAttribute("useq");
			String board_price = multipartRequest.getParameter("b_price");
			System.out.println("board_price == " + board_price);
			String board_content = multipartRequest.getParameter("b_content");
			System.out.println("board_content == " + board_content);
			String board_title = multipartRequest.getParameter("b_title");
			System.out.println("board_title == " + board_title);
			String board_image = multipartRequest.getOriginalFileName("b_image");
			String realfilename = multipartRequest.getFilesystemName("file");
			System.out.println("board_image == " + board_image);
			System.out.println("realfilename == " + board_image);
			
			System.out.println("parentFile ==== " + board_image);
			
			urlAddr = request.getSession().getServletContext().getRealPath(board_image);
			Ftpdirectory += board_image;
			System.out.println("real Path : " + urlAddr);
			
			String type = multipartRequest.getContentType("b_image");
			File f = multipartRequest.getFile("b_image");
			int len = 0;
			if(f != null) {
				len = (int)f.length();
			}
			System.out.println("파일 크기" + len);
			

			connectFTP.ftpUploadFile(Ftpdirectory, board_image, desDirectory);
		
	        myProductListDao udao = sqlSession.getMapper(myProductListDao.class);
			udao.UploadMyItem(board_useqno, board_content, board_title, board_price);
			
			myProductListDao b_seqDao = sqlSession.getMapper(myProductListDao.class);		
			 
			 int board_maxSeq =  b_seqDao.findMaxSeqNo(board_useqno);
			 System.out.println("board_maxSeq === " + board_maxSeq );
			 
			 myProductListDao imageDao = sqlSession.getMapper(myProductListDao.class);
			 imageDao.UpdatePImage(board_maxSeq, board_image);

			String[] arraySido = {"서울", "부산", "대구", "인천", "광주", "대전", "울산", "강원", "경기", "경남", "경북", "전남", "전북", "제주","충남", "충북"};
				
			String selectedSido = arraySido[Integer.parseInt(multipartRequest.getParameter("selectedSido"))-1];
			System.out.println("selectedSido ==== " + selectedSido);
			String selectedGungu = multipartRequest.getParameter("selectedGungu");
			System.out.println("selectedGungu ==== " + selectedGungu);
			if(selectedGungu.equals("전체")) {
				selectedGungu = "";
			}
			String sLocation =  selectedSido + " " + selectedGungu;
			System.out.println("sLocation ==== " + sLocation);
				
			 myProductListDao locationDao = sqlSession.getMapper(myProductListDao.class);
			 locationDao.InsertDealLocation(sLocation, board_maxSeq);
			 
			 
			 connectFTP.ftpDisconnect();
		
		} catch (IOException e) {
			// TODO Auto-generated catch bloc
			e.printStackTrace();
		}

//		myProductListDao imageDao = sqlSession.getMapper(myProductListDao.class);
//		imageDao.UpdatePImage(b_seqno, board_image);
		
		 // update 후 마이페이지로 넘어가야 되는데 이거 고쳐야 됨. 
		return "redirect:list";
	}
	// 게시된 내 제품에 대해 수정하기 위해 우선 select로 해당 정보를 가져오고 고쳐진 정보를 다시 update 해준다. 
	@RequestMapping("/UpdateProductInfo")
	public String UpdateProductInfo(HttpServletRequest request, Model model, HttpSession session) {
		
//		String board_title = request.getParameter("board_title");
//		String board_content = request.getParameter("board_content");
//		String board_price = request.getParameter("board_price");
		
//		String board_image = request.getParameter("image_string");
		
		String myIp = "192.168.0.82";
		String FTPid = "sb";
		String FTPpw = "1111";
		int FTPport = 21;
		MultipartRequest multipartRequest = null;
		String desDirectory = "ftp://192.168.0.82/test/";
		//String desDirectory = "/test/";
		myProductListDao b_seqDao = sqlSession.getMapper(myProductListDao.class);		
		 
		int board_maxSeq =  b_seqDao.findMaxImageSeqNo();
		

		try {
	        //System.out.println("urlAddddrrrr === "+ uploadPath);
			String Ftpdirectory = request.getSession().getServletContext().getRealPath("/resources/");
	        String directory = request.getSession().getServletContext().getRealPath("/resources/");
							
			connectFTP = new ConnectFTP();
			connectFTP.ftpConnect(myIp, FTPid, FTPpw, FTPport);
						
	        int maxSize = 1024*1024*100;
			System.out.println("실제경로 : " + directory);
			System.out.println("Ftp 주소 : " + Ftpdirectory);
				
			String encoding = "UTF-8";
			// FTP 설정을 위한 
	        File file = null;
			        
			multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
					new DefaultFileRenamePolicy());
			
			file = multipartRequest.getFile("file");
		
		    File isDir = new File(directory);
		    if(!isDir.isDirectory()){
		    	System.out.println("디렉토리가 없습니다. 디렉토리를 새로 생성합니다.");
		    	isDir.mkdir();
		    }
		    
			//String uploadPath = request.getRealPath("Img2");
			//System.out.println("upload Path : " + uploadPath);
			//int index = urlAddr.lastIndexOf("/");     //전체 urladdress에서 이미지 파일명만 받기
	        //String imgName = urlAddr.substring(index+1);         
	        //System.out.println("image Name : " + imgName);
		    
	        int board_seqno = Integer.parseInt(multipartRequest.getParameter("board_seq"));
	        
		    int board_useqno = (Integer) session.getAttribute("useq");
			String board_price = multipartRequest.getParameter("board_price");
			System.out.println("board_price == " + board_price);
			String board_content = multipartRequest.getParameter("board_content");
			System.out.println("board_content == " + board_content);
			String board_title = multipartRequest.getParameter("board_title");
			System.out.println("board_title == " + board_title);
			String b_image = multipartRequest.getOriginalFileName("b_image");

			String board_image = b_image;
						
			String realfilename = multipartRequest.getFilesystemName("file");
			System.out.println("board_image == " + board_image);
			System.out.println("realfilename == " + realfilename);
			
			System.out.println("parentFile ==== " + board_image);
			
			String insertImage =  Integer.toString(board_maxSeq) + "_" + b_image;
			
			urlAddr = request.getSession().getServletContext().getRealPath(board_image);
			Ftpdirectory += board_image;
			System.out.println("real Path : " + urlAddr);
			
			String type = multipartRequest.getContentType("b_image");
			File f = multipartRequest.getFile("b_image");
			int len = 0;
			if(f != null) {
				len = (int)f.length();
			}
			System.out.println("파일 크기" + len);
			
			//String insertImage =  Integer.toString(board_maxSeq) + "_" + b_image;
			
			//connectFTP.ftpUploadFile(Ftpdirectory, board_image, desDirectory);
			connectFTP.ftpUploadFile(Ftpdirectory, insertImage, desDirectory);
		
		myProductListDao updao = sqlSession.getMapper(myProductListDao.class);
		updao.UpdateProductInfo(board_title, board_content, board_price, board_seqno);
		
		String[] arraySido = {"서울", "부산", "대구", "인천", "광주", "대전", "울산", "강원", "경기", "경남", "경북", "전남", "전북", "제주","충남", "충북"};
		
		String selectedSido = arraySido[Integer.parseInt(multipartRequest.getParameter("selectedSido"))-1];
		System.out.println("selectedSido ==== " + selectedSido);
		String selectedGungu = multipartRequest.getParameter("selectedGungu");
		System.out.println("selectedGungu ==== " + selectedGungu);
		if(selectedGungu.equals("전체")) {
			selectedGungu = "";
		}
		String sLocation =  selectedSido + " " + selectedGungu;
		System.out.println("sLocation ==== " + sLocation);
		
		
		myProductListDao locationDao = sqlSession.getMapper(myProductListDao.class);
		locationDao.updateMyLocation(sLocation, board_seqno);
		
		 myProductListDao imageDao = sqlSession.getMapper(myProductListDao.class);
		 imageDao.updateMyImage(insertImage, board_seqno);

		} catch (IOException e) {
			// TODO Auto-generated catch bloc
			e.printStackTrace();
		}
		// update 후 화면은 메인 화면으로 넘어간다. 
		return "redirect:MyProductList";
	}
	// delete 는 table에 deletedate에 날짜를 update 해주는 것으로 구별한다. deletedate에 정보가 있으면 출력이 안되고 null 이면 출력되는 형식. 
	@RequestMapping("/DeleteMyProduct")
	public String DeleteMyProduct(HttpServletRequest request, Model model, HttpSession session) {
		
		int board_seqno = Integer.parseInt(request.getParameter("board_seq"));
		System.out.println("board+seqno === "+board_seqno);
		myProductListDao deleteDao = sqlSession.getMapper(myProductListDao.class);
		
		deleteDao.DeleteMyProduct(board_seqno);
		
		return "redirect:MyProductList";
	}
	
	// 전체 검색과 인기 검색어 출력을 위해 검색 된 값을 우선 DB searchData테이블에서 찾아주고 없으면 insert 있으면 update + 1 의 형식으로 넣어준다.
	// 그리고 select 를 통해 기입 정보에 해당되는 값을 출력해준다. 값이 없을시 화면은 list 화면 전체화면을 띄어준다. 
	@RequestMapping("/SearchWhatever")
	public String SearchWhatever(HttpServletRequest request, Model model, HttpSession session) {
		
		//the word1 = 검색창에 입력 값. 
		String the_word1 = request.getParameter("search");
//		String the_word2 = request.getParameter("search");
//		String the_word3 = request.getParameter("search");
//		String the_word4 = request.getParameter("search");
		System.out.println("searching_word === "+the_word1);
		
		mainlistDao insertDataDao = sqlSession.getMapper(mainlistDao.class);
		insertDataDao.InsertSearchedData(the_word1);
		
		
		mainlistDao searchDao = sqlSession.getMapper(mainlistDao.class);
		ArrayList<MainBoardListDto> searchdto = null;
		searchdto = searchDao.listForSearch(the_word1, the_word1, the_word1, the_word1);
		
		String result = "redirect:list";
		// 검색값을 통해 불러온 값이 0이 아니면 화면에 해당 정보를 띄어주고, 그게 아닐 시 화면은 메인화면으로 넘어간다. 
		if(searchdto.size() != 0) {	
			//searchdto = searchDao.listForSearch(the_word1);
			request.setAttribute("resultfor_search", searchdto);
			result = "ResultForSearch";		
		}else {
			System.out.println("searchDao is null");
		}
		
		return result;
	}
	
	@RequestMapping("/ReadingMyDM")
	public String ReadingMyDM(HttpServletRequest request, Model model, HttpSession session) {
	
		String DmReceiver = request.getParameter("DmSender");
		System.out.println("Dmsender === "+DmReceiver);
		int DmSeqno = Integer.parseInt(request.getParameter("DmSeqNo"));
		System.out.println("DmSeqno ===== "+DmSeqno);
		
		DirectMessageDao dao = sqlSession.getMapper(DirectMessageDao.class);
		model.addAttribute("Direct_Message_from", dao.ReadSellerId(DmSeqno));
		
		
		
		return "SendReplyMessage";
	}
	
	
	@RequestMapping("/ReplyDm")
	public String ReplyDm(HttpServletRequest request, Model model, HttpSession session) {
		
		String dm_senderid = (String) session.getAttribute("uid");
		String dm_reciverid = request.getParameter("DmSender");
		String dm_title = request.getParameter("DmTitle");
		String dm_content = request.getParameter("DmMemo");
		System.out.println("Dmmemo === " + dm_content);
		
		DirectMessageDao dao = sqlSession.getMapper(DirectMessageDao.class);
		dao.SendReplyMessage(dm_reciverid, dm_senderid, dm_title, dm_content);
		
		return "redirect:MyDmbox";
	}
	
	@RequestMapping("/DealCompleted")
		public String DealCompleted(HttpServletRequest request, Model model, HttpSession session) {
	
		int board_seqno = Integer.parseInt(request.getParameter("board_seqno"));
		System.out.println("board_seqno ==== "+board_seqno);
		myProductListDao changeStatusDao = sqlSession.getMapper(myProductListDao.class);
		changeStatusDao.ChangeProductStatus(board_seqno);
		
		return "redirect:MyProductList";
		
	}
	
	@RequestMapping("/MyLikeList")
	public String MyLikeList(HttpServletRequest request, Model model, HttpSession session) {
		
		int my_seqno = (Integer) session.getAttribute("useq");
		myProductListDao mpdao = sqlSession.getMapper(myProductListDao.class);
		ArrayList<MyProductListDto> myProductdtos = null;
		myProductdtos = mpdao.MyLikeList(my_seqno);
		request.setAttribute("myLikeList", myProductdtos);
		
		return "MyLikeLists";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}// -------- end -----------
