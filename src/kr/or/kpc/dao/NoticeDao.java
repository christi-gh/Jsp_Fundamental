package kr.or.kpc.dao;

import java.util.ArrayList;

import kr.or.kpc.dto.NoticeDto;

public class NoticeDao {
	public static NoticeDao dao;
	private NoticeDao() {}
	public static NoticeDao getInstance() {
		if(dao == null) {
			dao = new NoticeDao();
		}
		return dao;
	}
	public int insert(NoticeDto dto) {
		int resultCount = 0;
		
		return resultCount;
	}
	public int update(NoticeDto dto) {
		int resultCount = 0;
		
		return resultCount;
	}
	public int delete(int num) {
		int resultCount = 0;
		
		return resultCount;
	}
	
	public ArrayList<NoticeDto> select(int start, int len) {
		ArrayList<NoticeDto> list = new ArrayList<NoticeDto>();
		
		return list;
	}
	
	public NoticeDto selec(int num) {
		NoticeDto dto = null;
		
		return dto; 
	}
	
}
