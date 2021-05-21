import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");	
		PrintWriter out = response.getWriter();
		String n = request.getParameter("enroll");
		String p = request.getParameter("name");
		String e = request.getParameter("age");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "root");
			PreparedStatement ps = con.prepareStatement("insert into student values(?,?,?)");

			ps.setString(1, n);
			ps.setString(2, p);
			ps.setString(3, e);

			int i = ps.executeUpdate();
			if (i > 0)
				out.print("You are successfully registered...\n");

			Statement stmt = con.createStatement();
			String sql;
			sql = "SELECT * FROM student";
			ResultSet rs = stmt.executeQuery(sql);
			out.println("<br>Enroll Name Age<br>");
			
			// Extract data from result set
			while(rs.next()){
				//	Retrieve by column name
				String enroll = rs.getString("enroll");
				String name = rs.getString("sname");
				int age = rs.getInt("sage");

				//	Display values
				out.println(enroll + " ");
				out.println(name + " ");
				out.println(age + "<br>");
			}
			out.println("</body></html>");
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}	
}