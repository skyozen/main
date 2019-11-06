package main.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.action.Action;
import main.db.ProIntroDAO;

public class ProIntroAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");
		ProIntroDAO prointrodao = new ProIntroDAO();
		ActionForward forward = new ActionForward();
		String pro_path = prointrodao.getProintro();
		request.setAttribute("pro_path",pro_path);

		forward.setRedirect(false);
		forward.setPath("./main/ProIntro.jsp");
		return forward;
	}
}
