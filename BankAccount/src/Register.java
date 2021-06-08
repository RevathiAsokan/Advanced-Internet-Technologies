import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.*;
import javax.servlet.http.*;

public class Register extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");	
		PrintWriter out = response.getWriter();
		String name = request.getParameter("enroll");
		String password = request.getParameter("name");
		Float balance = (float)0;
		Boolean newCustomer = true;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "root");
			
			
			PreparedStatement ps = con.prepareStatement(
					"select * from bankaccount where customer_name = ? and password = ?"
					);

			ps.setString(1, name);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			// Extract data from result set
			while(rs.next()){
				newCustomer = false;
			}
			
			
			if(newCustomer) {
			ps = con.prepareStatement(
					"insert into bankaccount(customer_name, password, balance) values (?,?,?)"
					);

			ps.setString(1, name);
			ps.setString(2, password);
			ps.setFloat(3, balance);

			ps.executeUpdate();
			out.println("Successfully registered<br>");
			}

			ps = con.prepareStatement(
					"select * from bankaccount where customer_name = ? and password = ?"
					);

			ps.setString(1, name);
			ps.setString(2, password);
			
			rs = ps.executeQuery();
			
			// Extract data from result set
			while(rs.next()){
				//	Retrieve by column name
				String custname = rs.getString("customer_name");
				Float accountBalance = rs.getFloat("balance");

				//	Display values
				out.println("Welcome to ABC Bank, " + custname + "...!<br>");
				out.println("Your account balance is Rs." + accountBalance + "/-<br>");
			}
		} catch (Exception e2) { 
			System.out.println(e2);
		}

		out.close();
	}	
}