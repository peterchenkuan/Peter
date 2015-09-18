package friend.controller;
import friend.model.FriendService;
import friend.model.FriendVO;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.MemberService;
import member.model.MemberVO;


@WebServlet("/friend/deleteFriend") 
public class updateFriend extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberVO bean = (MemberVO)session.getAttribute("member");
		String memberId = bean.getMemberId();
		Map<String, String> errorMessage = new HashMap<>();
		MemberService service = new MemberService();
		FriendService fservice = new FriendService();
		List<FriendVO> bean2 = fservice.select_by_friend(memberId);	
		
		

		if (!errorMessage.isEmpty()) {		
			RequestDispatcher rd = request
					.getRequestDispatcher("/friend/deleteFriend.jsp");
			rd.forward(request, response);			
			return;
		}
		// MemberBean 扮演封裝輸入資料的角色									
//		fservice.updateFriend(friendId);				
		response.sendRedirect(
		response.encodeRedirectURL(request.getContextPath()+"/friend/friend.jsp"));
		return;	
					
		}
}
