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
			
			int listcount=Picdao.getListCount(); //�� ����Ʈ ���� �޾ƿ�.
			System.out.println("c");
			piclist = Picdao.getPicList(page,limit); //����Ʈ�� �޾ƿ�.
			System.out.println("1");
			//�� ������ ��.
	   		int maxpage=(int)((double)listcount/limit+0.95); //0.95�� ���ؼ� �ø� ó��.
	   		//���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
	   		int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
	   		//���� �������� ������ ������ ������ ��.(10, 20, 30 ��...)
	   		int endpage = maxpage;
	   		
	   		if (endpage>startpage+10-1) endpage=startpage+10-1;
	   		
	   		request.setAttribute("page", page);		  //���� ������ ��.
	   		request.setAttribute("maxpage", maxpage); //�ִ� ������ ��.
	   		request.setAttribute("startpage", startpage); //���� �������� ǥ���� ù ������ ��.
	   		request.setAttribute("endpage", endpage);     //���� �������� ǥ���� �� ������ ��.
			request.setAttribute("listcount",listcount); //�� ��.
			request.setAttribute("piclist", piclist);
			System.out.println("b");
			
		   	forward.setRedirect(false);
	   		forward.setPath("/main/picture.jsp");
	   		return forward;
		 }
}
