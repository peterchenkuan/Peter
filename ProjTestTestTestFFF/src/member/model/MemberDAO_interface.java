package member.model;

import java.util.*;

public interface MemberDAO_interface {
          public MemberVO insert(MemberVO memberVO);
          public int update(MemberVO memberVO);
          public int delete(String memberId);
          public MemberVO SelectById(String memberId);
          public List<MemberVO> getAll();
          public int UPDATEPWD(MemberVO memberVO);
}
