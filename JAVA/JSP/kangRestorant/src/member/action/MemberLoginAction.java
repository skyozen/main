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
		 	ActionForward forward = new ActionForward(); //������ ��ü ���� forward
		 	
		 	HttpSession session=request.getSession(); //���� ������ ���ǿ� �����ϱ����� ��ü ����
			MemberDAO memberdao=new MemberDAO(); //�����ڿ��� DB Connection
	   		MemberBean member=new MemberBean(); //������ ���� �׸�
	   		
	   		int result=-1;
	   		
	   		member.setME_ID(request.getParameter("ME_ID")); //��� request�� id�� ����
	   		member.setME_PW(request.getParameter("ME_PW")); // 
	   		result=memberdao.isMember(member);// id pass �񱳸����� �޼ҵ�
	   		
	   		if(result==0){ //
	   			response.setContentType("text/html;charset=euc-kr");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');");
		   		out.println("location.href='./MemberLogin.me';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
	   		}else if(result==-1){ //
	   			response.setContentType("text/html;charset=euc-kr");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('���̵� �������� �ʽ��ϴ�.');");
		   		out.println("location.href='./MemberLogin.me';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
		   	}
	   		
	   		//�α��� ����.
	   		session.setAttribute("ME_ID", member.getME_ID()); //���ǿ� id ����		
	   		
	   		forward.setRedirect(true); //forward�� redirect�� ture
	   		forward.setPath("Main.ma");//������ ��ġ
	   		return forward; //forward ��ȯ (ture, ./BoardList.bo)
	}
}