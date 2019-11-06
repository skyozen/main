package member.action;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.action.ActionForward;
import member.db.MemberBean;
import member.db.MemberDAO;

public class MemberLoginAction implements Action{
	 @SuppressWarnings("null")
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward(); //리턴할 객체 생성 forward
		 	
		 	HttpSession session=request.getSession(); //값을 저장할 세션에 저장하기위해 객체 생성
			MemberDAO memberdao=new MemberDAO(); //생성자에서 DB Connection
	   		MemberBean member=new MemberBean(); //데이터 담을 그릇
	   		
	   		int result=-1;
	   		
	   		member.setME_ID(request.getParameter("ME_ID")); //빈즈에 request의 id에 저장
	   		member.setME_PW(request.getParameter("ME_PW")); // 
	   		result=memberdao.isMember(member);// id pass 비교를위한 메소드
	   		
	   		if(result==0){ //
	   			response.setContentType("text/html;charset=euc-kr");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('비밀번호가 일치하지 않습니다.');");
		   		out.println("location.href='./MemberLogin.me';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
	   		}else if(result==-1){ //
	   			response.setContentType("text/html;charset=euc-kr");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('아이디가 존재하지 않습니다.');");
		   		out.println("location.href='./MemberLogin.me';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
		   	}
	   		
	   		//로그인 성공.
	   		session.setAttribute("ME_ID", member.getME_ID()); //세션에 id 저장		
	   		
	   		forward.setRedirect(true); //forward의 redirect에 ture
	   		forward.setPath("Main.ma");//가야할 위치
	   		return forward; //forward 반환 (ture, ./BoardList.bo)
	}
}