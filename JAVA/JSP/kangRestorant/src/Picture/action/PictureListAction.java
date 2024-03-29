package Picture.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Picture.db.*;


public class PictureListAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
			ActionForward forward= new ActionForward();
			HttpSession session=request.getSession();
	   		
			PicDAO Picdao=new PicDAO();
			List piclist=new ArrayList();
			
		  	int page=1;
			int limit=10;
			
			if(request.getParameter("page")!=null){
				page=Integer.parseInt(request.getParameter("page"));
			}
			
			int listcount=Picdao.getListCount(); //총 리스트 수를 받아옴.
			System.out.println("c");
			piclist = Picdao.getPicList(page,limit); //리스트를 받아옴.
			System.out.println("1");
			//총 페이지 수.
	   		int maxpage=(int)((double)listcount/limit+0.95); //0.95를 더해서 올림 처리.
	   		//현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
	   		int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
	   		//현재 페이지에 보여줄 마지막 페이지 수.(10, 20, 30 등...)
	   		int endpage = maxpage;
	   		
	   		if (endpage>startpage+10-1) endpage=startpage+10-1;
	   		
	   		request.setAttribute("page", page);		  //현재 페이지 수.
	   		request.setAttribute("maxpage", maxpage); //최대 페이지 수.
	   		request.setAttribute("startpage", startpage); //현재 페이지에 표시할 첫 페이지 수.
	   		request.setAttribute("endpage", endpage);     //현재 페이지에 표시할 끝 페이지 수.
			request.setAttribute("listcount",listcount); //글 수.
			request.setAttribute("piclist", piclist);
			System.out.println("b");
			
		   	forward.setRedirect(false);
	   		forward.setPath("/main/picture.jsp");
	   		return forward;
		 }
}
