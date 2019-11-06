package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.action.ActionForward;
import member.db.MemberBean;
import member.db.MemberDAO;

public class UpdatePwAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDAO memberdao=new MemberDAO();
	   		MemberBean member=new MemberBean();
	   		
	   		String ME_ID=(String)session.getAttribute("ME_ID");
	   		if(ME_ID==null){
				forward.setRedirect(true);
				forward.setPath("MemberLogin.me");
				return forward;
	   		}else{
		   		member=memberdao.getDetailMember(ME_ID);
	   		}
	   		
	   		String ME_PW=(String)request.getAttribute("ME_PW");
	   		memberdao.confirmpw(ME_ID,ME_PW);
	   		int result = memberdao.confirmpw(ME_ID,ME_PW);
	   		if( result==1) {
	   			System.out.println("���̵� Ȯ���ϼ���.");
	   		}else if(result==-1) {
	   			System.out.println("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
	   		}
	   		
	   		forward.setRedirect(false);
	   		forward.setPath("/Main.ma");
	   		return forward;
	}
}