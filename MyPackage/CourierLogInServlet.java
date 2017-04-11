package MyPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xbbnhfk.profile.ProfileDao;

/**
 * Servlet implementation class CourierLogInServlet
 */
@WebServlet("/CourierLogInServlet")
public class CourierLogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourierLogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html");  
        ProfileDao profileDao = new ProfileDao();
        String password1,loginid;
        response.setContentType("text/html"); 
                 loginid=request.getParameter("userName");
                 password1=request.getParameter("psw");
                 HttpSession session=request.getSession(true);
        session.setAttribute("uname",loginid);
                 if(profileDao.loginvalidate(loginid,password1)){
                       RequestDispatcher rd=request.getRequestDispatcher("CourierPage.html");
                       
                             rd.forward(request,response);
                 System.out.println("Entered login id and password"+loginid+password1);

                 }
                 else
                       {
                       PrintWriter out=response.getWriter();
RequestDispatcher rd=request.getRequestDispatcher("CourierActorLogin.html");
                     out.print("Sorry  Wrong id or password Please Try Again");
                 rd.forward(request,response);
                       }
 }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
