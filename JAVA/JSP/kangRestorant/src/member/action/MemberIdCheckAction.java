
package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import member.action.Action;
import member.action.ActionForward;
import member.db.MemberDAO;
 
public class MemberIdCheckAction implements Action
{
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
 
        String id = request.getParameter("id");
        MemberDAO dao = new MemberDAO();
        
        boolean result = dao.duplicateIdCheck(id);
        
        response.setContentType("text/html;charset=euc-kr");
        PrintWriter out = response.getWriter();
 
        if(result)    out.println("0"); // ���̵� �ߺ�
        else        out.println("1");
        
        out.close();
        
        return null;
    }
}

