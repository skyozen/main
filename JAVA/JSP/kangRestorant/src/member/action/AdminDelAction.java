package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.db.MemberBean;
import member.action.ActionForward;
import member.db.MemberDAO;

public class AdminDelAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDAO memberdao=new MemberDAO();
			
			boolean result=false;
			
			String name=request.getParameter("name");
	   		
	   		if(name==null){
				forward.setRedirect(true);
				forward.setPath("./member/admin_meminfo.me");
				return forward;
	   		}
	   		
	   		result=memberdao.admin_del(name);
	   		
	   		if(result==false){
	   			System.out.println("회원 삭제 실패");
		   		return null;
		   	}
	   		response.setContentType("text/html;charset=euc-kr");
	   		PrintWriter out=response.getWriter();
	   		out.println("<script>");
	   		out.println("alert('삭제성공! 목록을 갱신시켜주세요');");
	   		out.println("</script>");
	   		forward.setRedirect(true);
	   		forward.setPath("./admin_meminfo.jsp");
			return forward;
	}
}