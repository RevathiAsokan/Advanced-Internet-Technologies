import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



import javax.servlet.*;
import javax.servlet.http.*;

public class UpdateStudent extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");	
		PrintWriter out = response.getWriter();
		String enrollno = request.getParameter("enroll");
		String sname = request.getParameter("name");
		String sage = request.getParameter("age");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "root");

			Statement stmt = con.createStatement();
			
			PreparedStatement ps = con.prepareStatement(
					"update student set sname = ? , sage = ? where enroll = ?");

			ps.setString(1, sname);
			ps.setString(2, sage);
			ps.setString(3, enrollno);

			int i = ps.executeUpdate();
		
			String retsql = "SELECT * FROM student";
			ResultSet rs = stmt.executeQuery(retsql);
			
			out.println("Successfull updated student record of enrollment no= " + enrollno);
			out.println("<table border = 1>");
			out.println("<tr><td>Enroll</td><td>Name</td><td>Age</td></tr><br>");
			
			// Extract data from result set
			while(rs.next()){
				//	Retrieve by column name
				String enroll = rs.getString("enroll");
				String name = rs.getString("sname");
				int age = rs.getInt("sage");

				//	Display values
				out.println("<tr><td>" + enroll + "</td>");
				out.println("<td>" + name + "</td>");
				out.println("<td>" + age + "</td></tr>");
			}
			out.println("</table></body></html>");
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}	
}