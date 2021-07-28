package login.naman.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginRegister() {
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerDao cd= new CustomerDaoImpl();
		String userName=request.getParameter("username");
		String password=request.getParameter("password1");
		String submitType=request.getParameter("submit");
		String coursename=request.getParameter("coursename");
		String courseid=request.getParameter("courseid");
		String name=request.getParameter("name");
		Customer c=cd.getCustomer(userName, password);
		
		if(submitType.equals("login") && c!=null && c.getName()!=null) {
			request.setAttribute("message", c.getName());
			request.getRequestDispatcher("welcome.jsp").forward(request,response);
		}
		
		else if(submitType.equals("enroll")) {
			c.setCourseid(courseid);
			c.setCoursename(coursename);
			c.setName(name);
			
			cd.insertCourse(c);
			request.setAttribute("message", c.getName());
			request.setAttribute("course", c.getCoursename());
			request.getRequestDispatcher("afterenrollment.jsp").forward(request,response);
			
		}
		
		
		else if(submitType.equals("register")) {
			c.setName(request.getParameter("name"));
			c.setPassword(password);
			c.setUsername(userName);
			cd.insertCustomer(c);
			request.setAttribute("successMessage", "Registration done, please login to continue !!");
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
		
		else {
			request.setAttribute("message", "Data not found, Click on Register");
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
		
		
		
		
	}

}
