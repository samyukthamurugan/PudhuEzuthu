package MyPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xbbnhfk.profile.ProfileBean;
import com.xbbnhfk.profile.ProfileDao;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletrequestuest requestuest, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest requestuest, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletrequestuest requestuest, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//PrintWriter out=response.getWriter();
		
		
		ProfileBean profileBean=new ProfileBean();
		ProfileDao profileDao=new ProfileDao();
		
			
			profileBean.setName(request.getParameter("Firstname"));
			
			profileBean.setLastName(request.getParameter("LastName"));
			profileBean.setPhoneNumber(request.getParameter("PhoneNumber"));
			profileBean.setEmailId(request.getParameter("email"));
			profileBean.setAddressLine1(request.getParameter("Addressline1"));
			profileBean.setAddressLine2(request.getParameter("Addressline2"));
			profileBean.setCity(request.getParameter("City"));
			profileBean.setZipCode(request.getParameter("ZipCode"));
			profileDao.createProfile(profileBean);
			profileDao.createEntry(request.getParameter("email"), request.getParameter("password"));
			response.sendRedirect("login.html");
	}

}
