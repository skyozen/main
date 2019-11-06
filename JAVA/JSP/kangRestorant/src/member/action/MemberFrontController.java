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
			throws ServletException, IOException { // get , post 방식 두 방식에서 파라미터를 받는다. 두 방식중 어느 한 방식을 사용해도 doprocess 메서드로
													// 이동한다.
		String RequestURI = request.getRequestURI();
		System.out.println(RequestURI);// http://localhost:8080/Member_Board/MemberLogin.me
		String contextPath = request.getContextPath();
		System.out.println(contextPath);// http://localhost:8080/Member_Board
		String command = RequestURI.substring(contextPath.length()); /// MemberLogin.me
		ActionForward forward = null; // 멤버변수 isRedirect = false, path = null
		Action action = null; // 인터페이스 (특징: 추상메서드 , 상수) 추상메서드는 상속당하는 자식 클래스에서 반드시 구현해줘야함(인터페이스는 알맹이가없음)

		if (command.equals("/MemberLogin.me")) { // 로그인페이지 ->회원가임, 로그인
			forward = new ActionForward(); // ActionForward 객체 생성
			forward.setRedirect(false); // ActionForward 의 redirect false로 초기화
			forward.setPath("member/loginForm.jsp"); // ActionForward 의 Path /member/loginForm.jsp 초기화
		} else if (command.equals("/MemberJoin.me")) { // 회원가입페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("member/joinForm.jsp"); // 후에 JoinAction.me
		} else if (command.equals("/MemberLogout.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("member/logoutform.jsp");
		} else if (command.equals("/MemberLoginAction.me")) {
			action = new MemberLoginAction();
			try {
				forward = action.execute(request, response); // MemberLoginAction 클래스에서 설명 ㄱㄱ
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberJoinAction.me")) { // 회원가입 버튼 눌렀을 때
			action = new MemberJoinAction(); // 동적바인딩 MemberJoinAction.java는 Action 인터페이스를 구현함
			try {
				forward = action.execute(request, response); // MemberJoinAction 클래스에서 설명 ㄱㄱ
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberListAction.me")) { // 관리자인지 유저인지 판별하는
			action = new MemberListAction();
			try {
				forward = action.execute(request, response); // MemberListAction 클래스에서 설명 ㄱㄱ
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberViewAction.me")) { // 관리자페이지
			action = new MemberViewAction();
			try {
				forward = action.execute(request, response); // MemberViewAction 클래스에서 설명 ㄱㄱ
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberDeleteAction.me")) {// 관리자가 유저 삭제하는페이지
			action = new MemberDeleteAction();
			try {
				forward = action.execute(request, response); // MemberDeleteAction 클래스에서 설명 ㄱㄱ
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
		} else if (command.equals("/member/MyPage.me")) {// 관리자가 유저 삭제하는페이지
			action = new MyPageAction();
			try {
				forward = action.execute(request, response); // MemberDeleteAction 클래스에서 설명 ㄱㄱ
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
			throws ServletException, IOException { // get 방식 파라미터
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // post 방식 파라미터
		doProcess(request, response);
	}
}