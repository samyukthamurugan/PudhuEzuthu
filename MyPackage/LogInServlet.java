package MyPackage;

import java.io.IOException;  
import java.io.PrintWriter;  

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.Cookie;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

import com.xbbnhfk.profile.ProfileDao;
public class LogInServlet extends HttpServlet {  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
		
		
		/*
		response.setContentType("text/html");  
        ProfileDao profileDao = new ProfileDao();
        String password1,loginid;
        response.setContentType("text/html"); 
                 loginid=request.getParameter("userName");
                 password1=request.getParameter("psw");
                 HttpSession session=request.getSession(true);
        session.setAttribute("uname",loginid);
                 if(profileDao.loginvalidate(loginid,password1)){
                       RequestDispatcher rd=request.getRequestDispatcher("index.html");
                       
                             rd.forward(request,response);
                 System.out.println("Entered login id and password"+loginid+password1);

                 }
                 else
                       {
                       PrintWriter out=response.getWriter();
RequestDispatcher rd=request.getRequestDispatcher("login.html");
                     out.print("Sorry  Wrong id or password Please Try Again");
                 rd.forward(request,response);
                       }*/
 }

 


	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                           throws ServletException, IOException {  
		response.setContentType("text/html");  
        ProfileDao profileDao = new ProfileDao();
        String password1,loginid;
        response.setContentType("text/html"); 
                 loginid=request.getParameter("userName");
                 password1=request.getParameter("psw");
                 HttpSession session=request.getSession(true);
        session.setAttribute("uname",loginid);
                 if(profileDao.loginvalidate(loginid,password1)){
                       RequestDispatcher rd=request.getRequestDispatcher("index.html");
                       
                             rd.forward(request,response);
                 System.out.println("Entered login id and password"+loginid+password1);

                 }
                 else
                       {
                       PrintWriter out=response.getWriter();
RequestDispatcher rd=request.getRequestDispatcher("loginJ.jsp");
                     out.print("Sorry  Wrong id or password Please Try Again");
                 rd.forward(request,response);
                       }
	}
  
}
