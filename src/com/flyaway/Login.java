package com.flyaway;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Statement;
import java.util.Properties;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.DBConnection;


/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String userid = request.getParameter("userid");
				String password = request.getParameter("password");
				
				
				if (userid == null || userid.equals("") || password == null || password.equals("")) {
					response.sendRedirect("Admin_Login.jsp?error=1");
				}
				
				
				
				PrintWriter out = response.getWriter();
				out.print("<html><body>");
		try {
			
			InputStream in = getServletContext().getResourceAsStream("WEB-INF/config.properties");
			Properties prop = new Properties();
			prop.load(in);
		
			DBConnection conn = new DBConnection(prop.getProperty("url"), prop.getProperty("user"), prop.getProperty("password"));
		
			Statement stmt = conn.getConnection().createStatement();
			
			ResultSet rst = stmt.executeQuery("select * from admin");
			while(rst.next()) {
				
				if(userid.equalsIgnoreCase(rst.getString("user")) && password.equals(rst.getString("pass"))) {
					HttpSession session = request.getSession();
					session.setAttribute("userid", userid);
		    		response.sendRedirect("Admin_Dashboard.jsp");
		    		
		    }

        		
        }
						
	        RequestDispatcher rd = null;
	        rd = request.getRequestDispatcher("Admin_Login.jsp");
	        rd.include(request, response);
	        out.print("<center> <h4><span style='color:red; background-color:white' >Invalid credential!!</span></h4></center>");
	        
			 stmt.close();
			 conn.closeConnection();
			
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		      
		out.print("</body></html>");
	}
	
}
