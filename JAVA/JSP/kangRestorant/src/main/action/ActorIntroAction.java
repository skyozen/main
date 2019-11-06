package main.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.db.ActorIntroDAO;

public class ActorIntroAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");
		ActorIntroDAO actorintrodao = new ActorIntroDAO();
		ActionForward forward = new ActionForward();
		String act_path = actorintrodao.getActorIntro();
		request.setAttribute("act_path",act_path);

		forward.setRedirect(false);
		forward.setPath("./main/ActorIntro.jsp");
		return forward;
	}
}