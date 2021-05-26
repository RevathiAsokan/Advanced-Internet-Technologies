import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;



import javax.servlet.*;
import javax.servlet.http.*;

public class SearchStudent extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");	
		PrintWriter out = response.getWriter();
		String enrollno = request.getParameter("enroll");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "root");

			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM student where enroll = " + enrollno;
			ResultSet rs = stmt.executeQuery(sql);
			
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