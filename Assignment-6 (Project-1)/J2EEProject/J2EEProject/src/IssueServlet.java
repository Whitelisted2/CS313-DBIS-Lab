import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;

/**
 * Servlet implementation class IssueServlet
 */
@WebServlet("/IssueServlet")
public class IssueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public IssueServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
	
		//getting input values from jsp page
		String student_id = request.getParameter("student_id");
		String book_id = request.getParameter("book_id");
		String idate = request.getParameter("issue_date");
		java.util.Date i_date = new SimpleDateFormat("yyyy-MM-dd").parse(idate);
		java.sql.Date issue_date = new java.sql.Date(i_date.getTime());
//		String rdate = request.getParameter("return_date");
//		java.util.Date r_date = new SimpleDateFormat("yyyy-MM-dd").parse(rdate);
//		java.sql.Date return_date = new java.sql.Date(r_date.getTime());

		Connection con = null;
 		String url = "jdbc:mysql://localhost:3306/library"; //MySQL URL and followed by the database name
 		String username = "librarian"; //MySQL username
 		String password = "eselifterbraun"; //MySQL password
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
 		System.out.println("Printing connection object "+con);
 		
 		PreparedStatement checker = con.prepareStatement("SELECT COUNT(*) as C FROM student WHERE student_id = ? ;");
 		checker.setString(1,student_id);
 		ResultSet rset = checker.executeQuery();
		rset.next();
		PreparedStatement checker2 = con.prepareStatement("SELECT COUNT(*) as C2 FROM book WHERE book_id = ? ;");
 		checker2.setString(1,book_id);
 		ResultSet rset2 = checker2.executeQuery();
		rset2.next();
//		System.out.println(student_id);
//		System.out.println(rset.getInt("C"));
		if (rset.getInt("C") == 1 && rset2.getInt("C2") == 1) {  				// student exists
			PreparedStatement st = con.prepareStatement("INSERT INTO issue VALUES (?, ?, ?, null);");
	 		st.setString(1,student_id);
			st.setString(2,book_id);
			st.setDate(3,issue_date);
			int result=st.executeUpdate();
			st.close();

			if(result>0){
			    PreparedStatement upd = con.prepareStatement("UPDATE issue SET return_date = DATE_ADD(issue_date, INTERVAL 14 DAY) WHERE student_id = ? AND book_id = ? ;");
			    upd.setString(1,student_id);
	            upd.setString(2,book_id);
	            int result2 = upd.executeUpdate();
			    RequestDispatcher rd = request.getRequestDispatcher("IssueResult.jsp");
				rd.forward(request, response);
				upd.close();
			}
		
		}
		else {
			if(rset.getInt("C") == 1) {
				System.out.println("Book with given ID does not exist!");
			} else {
				System.out.println("Student with given ID does not exist!");
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("IssueError.jsp");
			rd.forward(request, response);
		}
		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}

	
	}


}


