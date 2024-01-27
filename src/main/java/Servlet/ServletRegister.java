package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.EmpDao;
import Entity.Student;
import conn.HibernateUtil;

@WebServlet("/register")
public class ServletRegister extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int rollno = Integer.parseInt(req.getParameter("rollno"));
		String name = req.getParameter("name");
		String branch = req.getParameter("branch");
		String batch = req.getParameter("batch");
		int mobile = Integer.parseInt(req.getParameter("mobile"));
		Student s = new Student(rollno, name, branch, batch, mobile);
		System.out.println(s);
		EmpDao dao = new EmpDao(HibernateUtil.getSessionFactory());
		boolean flag = dao.saveStudent(s);
		if(flag==true)
		{
			System.out.println("Saved..!");
		}
		else
		{
			System.out.println("Failed..!");
		}
		req.getRequestDispatcher("/Registration.jsp").forward(req, resp);
	}


	
	
}
