package jdbc_demo;
import java.sql.*;
import java.util.*;

public class Driver {
	static final String DB_URL = "jdbc:mysql://localhost:3306/university";
	static final String USER = "universityDB0003";
	static final String PASS = "wifelinlooof";
	public static void main(String[] args) {
		try {
			//Get connection
			Connection myConn = DriverManager.getConnection(DB_URL,USER,PASS);

			
//			// --------------------------------------Q1------------------------------
			Statement myS = myConn.createStatement();
			ResultSet resultSet = myS.executeQuery("SELECT * FROM student");
			
			System.out.println("__________________________________________");
			System.out.println("        Question 1: Testing Around        ");
			System.out.println("__________________________________________");
			if(!resultSet.next()) {
				System.out.println("No records found");
			}
			else {
				//Display for q1
				System.out.println("+------+---------------------+");
				System.out.println("|ID    | Name                |");
				System.out.println("+------+---------------------+");
				do {
					
					String ID = resultSet.getString("ID");
					ID = String.format("%5s", ID);
					String name = resultSet.getString("name");
					name = String.format("%-20s", name);
					
					System.out.println("| "+ID+"| "+name + "|");
				} while(resultSet.next());
				System.out.println("+------+---------------------+");
				System.out.println("____________________________________________________");
			}
			myS.close();
			
//			// --------------------------------------Q2------------------------------
			Statement stmt = myConn.createStatement();
			listDepartments(stmt);
			stmt.close();
			
			
//			// --------------------------------------Q3------------------------------
			String prepQuery = "SELECT room_number"
					+ " FROM classroom"
					+ " WHERE room_number NOT IN( "
					+ "	SELECT DISTINCT C.room_number"
					+ "	FROM section S NATURAL JOIN classroom C"
					+ "	WHERE S.year = ? "
					+ "	AND S.semester = ? "
					+ "	AND C.room_number IS NOT NULL"
					+ " )"
					+ " AND capacity > 30"
					+ " AND building = ? ;";
			// inner query: room num of those rooms that have classes in x yr, y sem
			// outer query: remove these room nums, and also get rooms w capacity > 30, reqd building

			PreparedStatement pstmt = myConn.prepareStatement(prepQuery);
			listDepartments(pstmt);
			pstmt.close();
			
			myConn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	static void listDepartments(Statement stmt)
	{
		try {
			String query = "SELECT A.dept_name, A.instr_count, COUNT(student.ID) AS student_count"
					+ " FROM"
					+ " ("
					+ " SELECT department.dept_name, COUNT(instructor.ID) AS instr_count"
					+ " FROM department LEFT JOIN instructor"
					+ " ON department.dept_name = instructor.dept_name"
					+ " GROUP BY department.dept_name"
					+ " ) A LEFT JOIN student"
					+ " ON A.dept_name = student.dept_name"
					+ " GROUP BY A.dept_name;";
			// Write the code for Q2
			
			ResultSet resultSet = stmt.executeQuery(query);
			System.out.println("__________________________________________");
			System.out.println("      Question 2: Department Strength     ");
			System.out.println("__________________________________________");
			if(!resultSet.next()) {
				System.out.println("No Records Found!");
			} else {
				System.out.println("+--------------+-------------+---------------+");
				System.out.println("| dept_name    | instr_count | student_count |");
				System.out.println("+--------------+-------------+---------------+");
				do {
					String dept_name = resultSet.getString("dept_name");
					dept_name = String.format("%13s", dept_name);
					String instr_count = resultSet.getString("instr_count");
					instr_count = String.format("%12s", instr_count);
					String student_count = resultSet.getString("student_count");
					student_count = String.format("%14s", student_count);
					
					System.out.println("| "+dept_name+"| "+instr_count + "| "+student_count+"|");
				} while(resultSet.next());
				System.out.println("+--------------+-------------+---------------+");
				System.out.println("____________________________________________________");
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	static void listDepartments(PreparedStatement pstmt)
	{
		
		Scanner sc = new Scanner(System.in);
		String semester = "";

		System.out.println("__________________________________________");
		System.out.println("          Question 3: Empty Rooms         ");
		System.out.println("__________________________________________");
		
		System.out.println("Enter a semester (Fall/Winter/Spring/Summer): ");
		semester = sc.nextLine();
		semester = semester.substring(0, 1).toUpperCase() + semester.substring(1).toLowerCase();
//		String[] semesterList = {"Fall", "Winter", "Spring", "Summer"};
		
		System.out.println("Enter a year (2007 to 2010): ");
		int year = sc.nextInt();
		sc.nextLine();
		
		System.out.println("Enter a building: ");
		String building = sc.nextLine();
		building = building.substring(0, 1).toUpperCase() + building.substring(1).toLowerCase();
		
		
		try {
			// Write the code for Q3
			// // testing block
//			pstmt.setInt(1, 2017);
//			pstmt.setString(2, "Fall");
//			pstmt.setString(3, "Watson");
			
			pstmt.setInt(1, year);
			pstmt.setString(2, semester);
			pstmt.setString(3, building);
			
			
			ResultSet resultSet = pstmt.executeQuery();
			System.out.println("\nBelow are the room numbers of those classrooms which ");
			System.out.println("have no courses scheduled in them in "+semester+" "+year);
			System.out.println("in the "+building+" building! (with capacity>30) \n");
			
			if(!resultSet.next()) {
				System.out.println("\nNo records found!!");
			} else {
				System.out.println("+----------------+");
				System.out.println("| room_number    |");
				System.out.println("+----------------+");
				do {
					String room_number = resultSet.getString("room_number");
					room_number = String.format("%15s", room_number);
					
					System.out.println("| "+room_number+"|");
				} while(resultSet.next());
				System.out.println("+----------------+");
				System.out.println("____________________________________________________");
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		sc.close();
	}
}
