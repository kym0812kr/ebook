package dao;

import java.util.HashMap;
import java.util.List;

import model.Book;
import model.User;

public interface TotalDao {

	public List<Book> selectAll();

	public List<Book> selectBoardPage(HashMap<String, Object> params);

	public int getCount();

	public List<Book> selectBoardByKeyword(HashMap<String, Object> params);

	public int getCountByKeyword(HashMap<String, Object> params);
	
	public User login(String user_id);
	
	public List<Book> ownlist(String user_id);
}
