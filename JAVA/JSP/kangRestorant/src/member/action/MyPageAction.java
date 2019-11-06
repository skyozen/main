package member.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.action.ActionForward;
import member.db.MemberBean;
import member.db.MemberDAO;

public class MyPageAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDAO memberdao=new MemberDAO();
	   		MemberBean member=new MemberBean();
	   		List memberlist=new ArrayList();
	   		
	   		
	   		String ME_ID=(String)session.getAttribute("ME_ID");
	   		if(ME_ID==null){
				forward.setRedirect(true);
				forward.setPath("MemberLogin.me");
				return forward;
	   		}else{
		   		member=memberdao.getDetailMember(ME_ID);
	   		}
	   		
	   		if(member==null){
	   			System.out.println("회원 정보 보기 실패");
		   		return null;
		   	}
	   		
	   		//memberlist=memberdao.getMemberList();
	   		request.setAttribute("member", member);
	   		
	   		if(ME_ID.equals("admin")) {
	   			memberlist=memberdao.getMemberList();
	   			session.setAttribute("memberlist", memberlist);
	   			if(memberlist==null){
		   			System.out.println("회원 목록 읽기 실패");
		   			return null;
		   		}
	   			System.out.println(memberlist.size());
				forward.setRedirect(true);
				forward.setPath("./admin_meminfo.jsp");
				return forward;
	   		}
	   		
	   		forward.setRedirect(false);
	   		forward.setPath("/member/mypage.jsp");
	   		return forward;
	}
}