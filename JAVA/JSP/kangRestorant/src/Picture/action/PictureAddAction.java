package Picture.action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Picture.action.Action;
import Picture.action.ActionForward;
import Picture.db.*;

public class PictureAddAction implements Action {
	@SuppressWarnings("deprecation")
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		PicDAO boarddao = new PicDAO();
		PicBean boarddata = new PicBean();

		ActionForward forward = new ActionForward();
		System.out.println("a");
		String realFolder = "";
		String saveFolder = "pic_pic";
		realFolder = request.getRealPath(saveFolder);
		int fileSize = 5 * 1024 * 1024;

		boolean result = false;
		System.out.println("b");
		try {
			MultipartRequest multi = null;

			multi = new MultipartRequest(request, realFolder, fileSize, "euc-kr", new DefaultFileRenamePolicy());
			String filename = "";
			@SuppressWarnings("rawtypes")
			Enumeration files = multi.getFileNames();
			String file = (String) files.nextElement();
			filename = multi.getFilesystemName(file);
			System.out.println(realFolder);
			System.out.println(saveFolder);
			String pic_path = realFolder + "\\" + filename;
			System.out.println("c");

			boarddata.setPIC_SUBJECT(multi.getParameter("PIC_SUBJECT"));
			boarddata.setPIC_CONTENT(multi.getParameter("PIC_CONTENT"));
			boarddata.setPIC_FILE(pic_path);

			result = boarddao.picInsert(boarddata);
			System.out.println("abc");
			if (result == false) {
				System.out.println("게시판 등록 실패");
				return null;
			}
			System.out.println("게시판 등록 완료");

			forward.setRedirect(true);
			forward.setPath("PicList.pi");
			return forward;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
}
