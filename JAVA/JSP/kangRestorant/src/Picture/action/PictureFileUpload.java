package Picture.action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Picture.db.PicDAO;

public class PictureFileUpload implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		@SuppressWarnings("deprecation")
		String uploadPath = request.getRealPath("pic_pic");
		int size = 10 * 1024 * 1024;
		String filename = "";

		try {
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "euc-kr",
					new DefaultFileRenamePolicy());

			@SuppressWarnings("rawtypes")
			Enumeration files = multi.getFileNames();

			String file = (String) files.nextElement();
			filename = multi.getFilesystemName(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(uploadPath);
		String pic_path = uploadPath+"\\"+filename;
		System.out.println(pic_path);
		PicDAO picintrodao = new PicDAO();
		picintrodao.setPicture(pic_path);
		forward.setRedirect(false);
		forward.setPath("./PictureAlbumWrite.jsp");
		return forward;
	}

}
