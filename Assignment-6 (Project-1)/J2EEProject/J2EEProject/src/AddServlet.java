import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
	
		//getting input values from jsp page
		String book_id = request.getParameter("book_id");
		String title = request.getParameter("title");
		String category = request.getParameter("category");
		String author = request.getParameter("author");


		Connection con = null;
 		String url = "jdbc:mysql://localhost:3306/library"; //MySQL URL and followed by the database name
 		String username = "librarian"; //MySQL username
 		String password = "eselifterbraun"; //MySQL password
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
 		System.out.println("Printing connection object "+con);
 		
 		PreparedStatement checker = con.prepareStatement("SELECT COUNT(*) as C FROM book WHERE book_id = ? ;");
 		checker.setString(1,book_id);
 		ResultSet rset = checker.executeQuery();
		rset.next();
		if (rset.getInt("C") == 0) {
			PreparedStatement st = con.prepareStatement("INSERT INTO book VALUES (?, ?, ?, ?);");
	 		st.setString(1,book_id);
			st.setString(2,title);
			st.setString(3,category);
			st.setString(4,author);
			int result=st.executeUpdate();

			if(result>0){
				RequestDispatcher rd = request.getRequestDispatcher("AddResult.jsp");
				rd.forward(request, response);
			}
		
		}
		else {
			System.out.println("Book Already Exists.");
			RequestDispatcher rd = request.getRequestDispatcher("AddError.jsp");
			rd.forward(request, response);
		}
		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}
        // adjust so that blank records shouldn't enter in ! (all columns not null ig)
		// also issueServlet
	}
}


