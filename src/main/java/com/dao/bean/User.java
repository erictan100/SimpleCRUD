package com.dao.bean;

public class User 
{
	private int id;
	private String studentname, studentid, address, department, doe;
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	
	public String getstudentname()
	{
		return studentname;
	}
	public void setstudentname (String studentname)
	{
		this.studentname = studentname;
	}
	
	public String getstudentid()
	{
		return studentid;
	}
	public void setstudentid (String studentid)
	{
		this.studentid = studentid;
	}
	
	public String getaddress()
	{
		return address;
	}
	public void setaddress(String address)
	{
		this.address = address;
	}
	
	public String getdepartment()
	{
		return department;
	}
	public void setdepartment(String department)
	{
		this.department = department;
	}
	
	public String getdoe()
	{
		return doe;
	}
	public void setdoe(String doe)
	{
		this.doe = doe;
	}
}
