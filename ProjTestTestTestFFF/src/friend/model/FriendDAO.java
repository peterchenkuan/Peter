package friend.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
public class FriendDAO {
	private static DataSource ds = null;
	public FriendDAO() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static final String SELECT_BY_FRIEND = "Select Friend.friendId, Friend.unfriend from Member inner join Friend  on Member.memberId = Friend.memberId where Member.memberId = ?";
//	private static final String SELECT_BY_FRIEND = "Select * from  Friend where memberId = ? group by memberId";
	public List<FriendVO> select_by_friend(String memberId) {
		List<FriendVO> list = new ArrayList<FriendVO>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(SELECT_BY_FRIEND);
			stmt.setString(1, memberId);	
			rset = stmt.executeQuery();
			while (rset.next()) {
				FriendVO result = new FriendVO();				
				result.setFriendId(rset.getString("friendId"));
				result.setUnfriend(rset.getInt("unfriend"));
				list.add(result);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	private static final String INSERTFRIEND = "Insert into Friend (memberId, friendId, unfriend) values (?,?,?)";
	public int insertfriend(FriendVO friendVO) {
		int result = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(INSERTFRIEND);
			stmt.setString(1, friendVO.getMemberId());
			stmt.setString(2, friendVO.getFriendId());
			int b =0;
			stmt.setInt(3, b);		
			result = stmt.executeUpdate();
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	private static final String INSERMEMBER = "Insert into Friend (memberId, friendId, unfriend) values (?,?,?)";
	public int insertmember(FriendVO friendVO) {
		int result = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(INSERTFRIEND);
			stmt.setString(2, friendVO.getMemberId());
			stmt.setString(1, friendVO.getFriendId());
			int b =1;
			stmt.setInt(3, b);		
			result = stmt.executeUpdate();
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	private static final String UPDATEFRIEND = "Update Friend set unfriend=?  where friendId = ?";
	public int updatefriend(FriendVO friendVO) {
		int result = 0;
		Connection conn=null;
		PreparedStatement stmt = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(UPDATEFRIEND);
			stmt.setInt(1, friendVO.getUnfriend());
			stmt.setString(2, friendVO.getFriendId());

			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;		
	}
	
	private static final String DELETEFRIEND = "Delete from Friend where friendId=?";
	public int delete(String friendId) {
		int result = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(DELETEFRIEND);

			stmt.setString(1, friendId);
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
}
