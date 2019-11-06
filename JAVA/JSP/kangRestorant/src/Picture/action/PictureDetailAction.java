package Picture.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Picture.action.Action;
import Picture.action.ActionForward;

import Picture.db.*;

public class PictureDetailAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 throws Exception{ 
		request.setCharacterEncoding("euc-kr");
  		
		PicDAO Picdao=new PicDAO();
		PicBean Picdata=new PicBean();
	   	
		int num=Integer.parseInt(request.getParameter("num"));
		/* String pic=request.getParameter("pic"); */
		Picdao.setReadCountUpdate(num);
		Picdata=Picdao.getDetail(num);
	   	
	   	if(Picdata==null){
	   		System.out.println("상세보기 실패");
	   		return null;
	   	}
	   	System.out.println("상세보기 성공");
	   	
	   	request.setAttribute("Picdata", Picdata);
	   	ActionForward forward = new ActionForward();
	   	forward.setRedirect(false);
  		forward.setPath("/picture/PhotoAlbumView.jsp");
  		return forward;

	 }
}