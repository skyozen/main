package Picture.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Picture.db.*;

public class PictureAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("euc-kr");
		PicDAO picintrodao = new PicDAO();
		ActionForward forward = new ActionForward();
		String pic_path = picintrodao.getPicture();
		request.setAttribute("pic_path",pic_path);

		forward.setRedirect(false);
		forward.setPath("./main/picture.jsp");
		return forward;
	}
}