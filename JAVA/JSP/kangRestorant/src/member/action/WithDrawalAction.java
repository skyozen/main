package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.action.ActionForward;
import member.db.MemberBean;
import member.db.MemberDAO;

public class WithDrawalAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDAO memberdao=new MemberDAO();
	   		MemberBean member=new MemberBean();
	   		
	   		String ME_ID= (String)session.getAttribute("ME_ID"); 
	        String ME_PW = request.getParameter("ME_PW");
	        System.out.println(ME_PW);
	        
	        int check = memberdao.deleteMember(ME_ID, ME_PW);

	        if(check == 1){
	            session.invalidate();


	      
	        }
	   		forward.setRedirect(true);
	   		forward.setPath("../Main.jsp");
	   		return forward;
	
}
}