package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.action.ActionForward;
import member.db.MemberBean;
import member.db.MemberDAO;

public class MemberJoinAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	request.setCharacterEncoding("euc-kr");
		 	
		 	ActionForward forward = new ActionForward();
		 	
			MemberDAO memberdao=new MemberDAO();
	   		MemberBean member=new MemberBean();
	   		
	   		boolean result=false;
	   		System.out.println(request.getParameter("ME_ID"));
	   		member.setME_ID(request.getParameter("ME_ID"));
		/* member.setME_NO(request.getParameter("ME_NO")); */
	   		member.setME_PW(request.getParameter("ME_PW"));
	   		member.setME_NICKNAME(request.getParameter("ME_NICKNAME"));
	   		member.setME_NAME(request.getParameter("ME_NAME"));
	   		member.setME_IDNUM1(request.getParameter("ME_IDNUM1"));
	   		member.setME_IDNUM2(request.getParameter("ME_IDNUM2"));
	   		member.setME_EMAIL(request.getParameter("ME_EMAIL"));
	   		
	   		result=memberdao.joinMember(member);
	   		
	   		if(result==false){
	   			System.out.println("회원가입 실패");
		   		return null;
		   	}
	   		
	   		//회원가입 성공.
	   		forward.setRedirect(true);
	   		forward.setPath("./MemberLogin.me");
	   		return forward;
	}
}