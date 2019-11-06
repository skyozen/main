package member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.action.AdminDelAction;

public class MemberFrontController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // get , post ��� �� ��Ŀ��� �Ķ���͸� �޴´�. �� ����� ��� �� ����� ����ص� doprocess �޼����
													// �̵��Ѵ�.
		String RequestURI = request.getRequestURI();
		System.out.println(RequestURI);// http://localhost:8080/Member_Board/MemberLogin.me
		String contextPath = request.getContextPath();
		System.out.println(contextPath);// http://localhost:8080/Member_Board
		String command = RequestURI.substring(contextPath.length()); /// MemberLogin.me
		ActionForward forward = null; // ������� isRedirect = false, path = null
		Action action = null; // �������̽� (Ư¡: �߻�޼��� , ���) �߻�޼���� ��Ӵ��ϴ� �ڽ� Ŭ�������� �ݵ�� �����������(�������̽��� �˸��̰�����)

		if (command.equals("/MemberLogin.me")) { // �α��������� ->ȸ������, �α���
			forward = new ActionForward(); // ActionForward ��ü ����
			forward.setRedirect(false); // ActionForward �� redirect false�� �ʱ�ȭ
			forward.setPath("member/loginForm.jsp"); // ActionForward �� Path /member/loginForm.jsp �ʱ�ȭ
		} else if (command.equals("/MemberJoin.me")) { // ȸ������������
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("member/joinForm.jsp"); // �Ŀ� JoinAction.me
		} else if (command.equals("/MemberLogout.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("member/logoutform.jsp");
		} else if (command.equals("/MemberLoginAction.me")) {
			action = new MemberLoginAction();
			try {
				forward = action.execute(request, response); // MemberLoginAction Ŭ�������� ���� ����
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberJoinAction.me")) { // ȸ������ ��ư ������ ��
			action = new MemberJoinAction(); // �������ε� MemberJoinAction.java�� Action �������̽��� ������
			try {
				forward = action.execute(request, response); // MemberJoinAction Ŭ�������� ���� ����
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberListAction.me")) { // ���������� �������� �Ǻ��ϴ�
			action = new MemberListAction();
			try {
				forward = action.execute(request, response); // MemberListAction Ŭ�������� ���� ����
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberViewAction.me")) { // ������������
			action = new MemberViewAction();
			try {
				forward = action.execute(request, response); // MemberViewAction Ŭ�������� ���� ����
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberDeleteAction.me")) {// �����ڰ� ���� �����ϴ�������
			action = new MemberDeleteAction();
			try {
				forward = action.execute(request, response); // MemberDeleteAction Ŭ�������� ���� ����
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/member/MemberIdCheckAction.me")) {
			action = new MemberIdCheckAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/member/updatepw.me")) {
			action = new UpdatePwAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/member/withdrawal.me")) {
			action = new WithDrawalAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/member/MyPage.me")) {// �����ڰ� ���� �����ϴ�������
			action = new MyPageAction();
			try {
				forward = action.execute(request, response); // MemberDeleteAction Ŭ�������� ���� ����
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/member/admin_del.me")){
			   action = new AdminDelAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }

		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath()); // true
		} else {// false
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // get ��� �Ķ����
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // post ��� �Ķ����
		doProcess(request, response);
	}
}