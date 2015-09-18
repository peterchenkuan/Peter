package friend.controller;
import friend.model.FriendService;
import friend.model.FriendVO;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/friend/selectFriend.do") 
public class selectFriend extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}



	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberVO bean = (MemberVO)session.getAttribute("member");
		String memberId = bean.getMemberId();		
		FriendService service = new FriendService();
		// MemberBean 扮演封裝輸入資料的角色		
		List<FriendVO> bean2 = service.select_by_friend(memberId);
		request.setAttribute("selectFriend", bean2);
		request.getRequestDispatcher("/friend/selectSuccess.jsp").forward(request, response);
		return;
//		for(FriendVO bean1:bean2)
//		{
//			System.out.println(bean1.getFriendId());
//		}	
//		response.sendRedirect(
//		response.encodeRedirectURL(request.getContextPath()+"/friend/friend.jsp"));
//		return;	
//					
		}
}
