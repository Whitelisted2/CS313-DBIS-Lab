
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdvisorServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		response.setContentType("text/html;charset=UTF-8");
		
		String advisor_id = request.getParameter("id");//getting student id as input from index.html page
		
		PrintWriter out = response.getWriter();
		Connection conn = null;
		Statement  stmt = null;
		String dept_name=null;
		final String DB_URL = "jdbc:mysql://localhost:3306/university";
		final String USER = "universityDB0003";
		final String PASS = "wifelinlooof";
		try {
			out.println("<!DOCTYPE html>");//print in the form of HTML code
			out.println("<html>");
			out.println("<head>\r\n" + 
					"<meta charset=\"UTF-8\">" + 
					"<title>Advisor Servlet Page</title>" + 
					"<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">" + 
					"<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>" + 
					"<link href=\"https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,700&display=swap\" rel=\"stylesheet\">" + 
					"<style>" + 
					"body {" + 
					"	font-family: 'Merriweather', serif;" + 
					"}" + 
					"</style>" + 
					"</head>");
//			out.println("<head><title>Advisor Query Servlet</title></head>");
			out.println("<body>");
			Class.forName("com.mysql.jdbc.Driver"); //loading mysql driver
			// com.mysql = package within which driver exists
			String query=" SELECT A.i_id, I.dept_name " + 
					" FROM advisor AS A, instructor AS I " + 
					" WHERE A.i_id = I.ID" + 
					" AND A.i_id = ?;"; //query to get the student details with id 
			conn = DriverManager.getConnection(DB_URL,USER,PASS); //mysql connection with username and password
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, advisor_id);
			ResultSet rset = ps.executeQuery();
			int count=0;
			while(rset.next()) {
				dept_name=rset.getString("dept_name");//getting student name and storing in a variable
				++count;
			}
			out.println("Advisor id is <u>" +advisor_id+"</u> and Department name is <u>"+dept_name+"</u>");//printing student id and name
			if(count==1) {
				out.println("<p>==== " + count + " row found =====</p>");
			} else {
				// we'll never actually get this for given DB, since 
				// an instructor can only be in one dept.
				out.println("<p>==== " + count + " rows found =====</p>");
			}
			out.println("</body></html>");
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			out.close();
			try {
				if (stmt != null) stmt.close();
				if (conn != null) conn.close();  // closing connection and statement variables
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}
}
/*
 SELECT A.i_id, I.dept_name 
 FROM advisor AS A, instructor AS I
 WHERE A.i_id = I.ID
 AND A.i_id = ?;
 */
