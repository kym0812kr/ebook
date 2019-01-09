package service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.TotalDao;
import model.Book;
import model.User;

@Service
public class TotalService {

	@Autowired
	private TotalDao tdao;

	public List<Book> selectAll() {
		return tdao.selectAll();
	}

	public int getStartPage(int page) {
		return page - ((page - 1) % 10);
	}

	public int getEndPage(int page) {
		return (page - ((page - 1) % 10)) + (10 - 1);
	}

	public int getLastPage(int NumOfBoards) {
		return (NumOfBoards - 1) / 10 + 1;
	}

	public int getOffset(int page) {
		return (page - 1) * 10;
	}

	public HashMap<String, Object> getBoardListPage(int page) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("offset", getOffset(page));
		params.put("boardsPerPage", 10);

		HashMap<String, Object> pageInfo = new HashMap<String, Object>();
		pageInfo.put("current", page); 
		pageInfo.put("start", getStartPage(page)); 
		pageInfo.put("end", getEndPage(page)); 
		pageInfo.put("last", getLastPage(tdao.getCount())); 
		pageInfo.put("totalPage", tdao.getCount()); 

		pageInfo.put("booklist", tdao.selectBoardPage(params));
		return pageInfo;
	}

	public HashMap<String, Object> getBoardListByCondition(int page, int type, String keyword) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("type", type);
		params.put("keyword", keyword);
		params.put("offset", getOffset(page));
		params.put("boardsPerPage", 10);

		HashMap<String, Object> pageInfo = new HashMap<String, Object>();
		pageInfo.put("booklist", tdao.selectBoardByKeyword(params));
		pageInfo.put("current", page);
		pageInfo.put("start", getStartPage(page));
		pageInfo.put("end", getEndPage(page));
		pageInfo.put("last", getLastPage(tdao.getCountByKeyword(params)));
		pageInfo.put("totalPage", tdao.getCountByKeyword(params));
		return pageInfo;
	}
	
	public int login(String user_id, String user_pwd) {
		User user = tdao.login(user_id);
		if(user==null) {
			return 1;
		}
		else if(user_pwd== null) {
			return 2;
		}
		else if(!user.getUser_pwd().equals(user_pwd)) {
			return 3;
		}
		else {
			return 0;
		}
	}
	
	public List<Book> ownlist(String user_id){
		return tdao.ownlist(user_id);
	}

}
