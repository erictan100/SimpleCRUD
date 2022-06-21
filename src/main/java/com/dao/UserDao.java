package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.dao.bean.User;


public class UserDao
{
	public static Connection getConnection()
	{
		Connection con = null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","student", "student");
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
	public static int save(User s)
	{
		int status = 0;
		
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into student_database(StudentName,StudentID,ResidentialAddress,Department,DoE) values (?,?,?,?,?)");
			ps.setString(1, s.getstudentname());
			ps.setString(2, s.getstudentid());
			ps.setString(3, s.getaddress());
			ps.setString(4, s.getdepartment());
			ps.setString(5, s.getdoe());
			status = ps.executeUpdate(); 
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		return status;
	}
	
	public static int update(User s)
	{
		int status = 0;
		
		try
		{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update student_database set StudentName=?,StudentID=?,ResidentialAddress=?,Department=?,DoE=? where id = ?");
			ps.setString(1, s.getstudentname());
			ps.setString(2, s.getstudentid());
			ps.setString(3, s.getaddress());
			ps.setString(4, s.getdepartment());
			ps.setString(5, s.getdoe());
			ps.setInt(6, s.getId());
			
			status = ps.executeUpdate(); 
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		return status;
	}
	
	public  static int delete(User s)
	{
		int status = 0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps = con.prepareStatement("delete from student_database where id=?");
			ps.setInt(1,s.getId());
			status = ps.executeUpdate();
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static List<User> getAllRecord()
	{
		List<User> list = new ArrayList<User>(); // want to get all the record that listed
		
		try
		{
			Connection con=getConnection();
			PreparedStatement ps = con.prepareStatement("select * from student_database");
			ResultSet rs = ps.executeQuery(); // have to save the result here

			while(rs.next())
			{
				User s = new User();
				s.setId(rs.getInt("id")); // set the id
				s.setstudentname(rs.getString("studentname"));
				s.setstudentid(rs.getString("studentid"));
				s.setaddress(rs.getString("residentialaddress"));
				s.setdepartment(rs.getString("department"));
				s.setdoe(rs.getString("doe"));
				list.add(s);
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return list;
	}
	
	public static User getRecordById(int id)
	{
		User s = null;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps = con.prepareStatement("select * from student_database where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				s = new User();
				s.setId(rs.getInt("id"));
				s.setstudentname(rs.getString("studentname"));
				s.setstudentid(rs.getString("studentid"));
				s.setaddress(rs.getString("residentialaddress"));
				s.setdepartment(rs.getString("department"));
				s.setdoe(rs.getString("doe"));
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return s;
	}
	
}
