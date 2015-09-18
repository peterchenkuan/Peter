package member.model;
import java.util.Arrays;


public class MemberService {
	private MemberDAO_interface memberDAO = new MemberDAO();	
	public MemberVO login(String memberId,String password){
		MemberVO bean = memberDAO.SelectById(memberId);
		if(bean!=null){
			if(password!=null && password.length()!=0){
				byte[] pass = bean.getPassword();
				byte[] temp = password.getBytes();
				if(Arrays.equals(pass, temp)){
					return bean;
				}
			}
		}
		return null;	
	}
	
	public boolean changePassword(String username, String oldPassword, String newPassword) {
		MemberVO bean = this.login(username, oldPassword);
		if(bean!=null) {
			byte[] temp = newPassword.getBytes();
			bean.setPassword(temp);
			if(memberDAO.UPDATEPWD(bean)==1){
			return true;
	     	}
		}
		return false;
	}
	
	public boolean checkMemberId(String memberId){
		if(memberDAO.SelectById(memberId)==null){
			return true;
		}
		return false;		
	}
	public MemberVO updateRegistration(MemberVO bean){
		if(bean!=null){
			if(memberDAO.update(bean)==1){
				return bean;
			}
		}
		return null;
	}
}
