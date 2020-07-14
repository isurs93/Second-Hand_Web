package com.finalproject.market.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
//import java.util.ArrayList;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;

public class FTP_UploadFile {
	
	  private String server = "server IP";
	  private int port = 21;
	  private String user = "userId";
	  private String pw = "password";
	
	  public FTP_UploadFile(String server, String id, String pw, int port) {
		this.server = server;
		this.port = port;
		this.user = id;
		this.pw = pw;		  
	  }
	  	  	  
	  public void ftpTest(String fileName, byte[] fileData, String directoryRoot) /*throws Throwable*/ {
	  //public void ftpTest(String fileName, byte[] uploadFile, String directoryRoot) throws Throwable {
		  
		  // for문 사용 이유는 사진을 여러가지 보내는 경우를 생각 했음... 
		  // FTP_Data 클래스를 만들어 ArrayList를 사용한 이유도 같은 이유임... by - psj
		  //for(int index=0; index<uploadFiles.size(); index++) {
			  
			  	//받는 변수는 request를 보낸 것에 맞게 받으시면 됩니다.
				//웹에서 받은 MultipartFile을 File로 변환시켜줍니다.

				//FTPClient를 생성합니다.
				FTPClient ftp = new FTPClient();
		  
				try {
					// 이것은 getFileName()의 이름으로 파일 객체를 생성한다.
					//File convertFile = new File(uploadFiles.get(0).getFileName());
					File convertFile = new File(fileName);
					System.out.println("fileName = " + fileName);
					// 그리고 getFileName()의 이름으로 파일을 생성한다.
					convertFile.createNewFile();
					
					// converFile로 지정한 파일에 대한 OutputStream 객채를 생성한다.
					FileOutputStream fos = new FileOutputStream(convertFile);
					
					// 인자로 받은 byte 데이터의 내용을 출력한다.
					fos.write(fileData);
					// 연결을 끊는다.
					fos.close();

					// 
					FileInputStream fis = null;
					try {
						//원하시는 인코딩 타입
						ftp.setControlEncoding("utf-8");
						ftp.connect(server, port);
						ftp.login(user, pw);
						
						//원하시는 파일 타입
						ftp.setFileType(FTP.BINARY_FILE_TYPE);
						ftp.enterLocalPassiveMode();
						
						//제대로 연결이 안댔을 경우 ftp접속을 끊습니다.
						if(!FTPReply.isPositiveCompletion(ftp.getReplyCode())) {
							ftp.disconnect();
						}
						
						//파일을 넣을 디렉토리를 설정해줍니다.
						//makeDirectory는 directory 생성이 필요할 때만 해주시면 됩니다.
						
						// 이 놈은 디토리를 만들어 주는 놈이다.
						//ftp.makeDirectory(directoryRoot); 
						
						// 작업 디렉토리의 경로를 directoryRoot로 변경한다.
						ftp.changeWorkingDirectory(directoryRoot); 
						
						//그 후 이전에 File로 변환한 업로드파일을 읽어 FTP로 전송합니다.
						fis = new FileInputStream(convertFile);
						
						//storeFile Method는 파일 송신결과를 boolean값으로 리턴합니다
						Boolean isSuccess = ftp.storeFile(fileName, fis);
												
						if(isSuccess) {
							System.out.println("업로드 성공");
						} else {
							System.out.println("업로드 실패");
						}
						
					} catch(Exception e) {
						e.printStackTrace();
					} finally {
						if(fis!=null) {
							try {
								fis.close();
							} catch(Exception e) {
								e.printStackTrace();
							}
						}
					}
				} catch(Exception e) {
					e.printStackTrace();
				} finally {
					if(ftp!=null && ftp.isConnected()) {
						try {
							ftp.disconnect();
						} catch(Exception e) {
							e.printStackTrace();
						}
					}
				}
		  //}		
	}
}