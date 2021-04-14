package Employee.Demo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Employee.Bean.*;

public class EmployeeDemo {
	public int  setData(Employee e)
	{int r=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Emp", "root", "root");
			String query="insert into Employee (Name,Age,Address,Email_id , Job_post ,Employee_id ,Father_Name,Dob,"
					+ "PhoneNumber,Education,Aadhar_No) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement p=con.prepareStatement(query);
			
			p.setString(1,e.getName());
			p.setString(2,e.getAge());
			p.setString(3, e.getAddress());
			p.setString(4, e.getEmail_id());
			p.setString(5, e.getJob_post());
			p.setString(6, e.getEmployee_id());
			p.setString(7, e.getFather_Name());
			p.setString(8, e.getDob());
			p.setString(9, e.getPhoneNumber());
			p.setString(10, e.getEducation());
			p.setString(11, e.getAadhar_No());
					
			 r=p.executeUpdate();
			return r;
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return 0;
	}
	
	public Employee  getList(String id)
	{Employee e=new Employee();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Emp", "root", "root");
			String query="select *from Employee where Employee_id='"+id+"'";
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(query);
			while(rs.next()) {
				e.setName(rs.getString("Name"));
				e.setAge(rs.getString("Age"));
				e.setAddress(rs.getString("Address"));
				e.setEmail_id(rs.getString("Email_id"));
				e.setJob_post(rs.getString("Job_post"));
				e.setEmployee_id(rs.getString("Employee_id"));
				e.setFather_Name(rs.getString("Father_Name"));
				e.setDob(rs.getString("Dob"));
				e.setPhoneNumber(rs.getString("PhoneNumber"));
				e.setEducation(rs.getString("Education"));
				e.setAadhar_No(rs.getString("Aadhar_No"));
				
				break;
				
				
		
			}
			return e;
		
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	
	}
	
	
	
	

	public int  DelList(String id)
	{Employee e=new Employee();
	int r=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Emp", "root", "root");
			String query="delete from Employee where Employee_id='"+id+"'";
			Statement st=con.createStatement();
			PreparedStatement p=con.prepareStatement(query);
			 r=p.executeUpdate();
			
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	return r;
	}
	
	
	public int  UpdateData(Employee e)
	{int r=0;
	String m=e.getEmployee_id();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Emp", "root", "root");
			String query="update Employee set Name='"+e.getName()+"',Age='"+e.getAge()+"',Address='"+e.getAddress()+
					"',Email_id='"+e.getEmail_id()+"' ,Job_post='"+e.getJob_post()+"',Employee_id='"+e.getEmployee_id()+"',"
							+ "Father_Name='"+e.getFather_Name()+"' ,Dob='"+e.getDob()+"',PhoneNumber='"+e.getPhoneNumber()+
							"',Education='"+e.getEducation()+
							"',Aadhar_No='"+e.getAadhar_No()+"' where Employee_id='"+m+"'";
			PreparedStatement p=con.prepareStatement(query);
			
			 r=p.executeUpdate();
			return r;
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return 0;
	}

	
	
	
	

}
