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

@WebServlet("/show")
public class ServletShow extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get Roll Number from the request
        int rollNumber = Integer.parseInt(req.getParameter("rollNumber"));

        // Perform validation and error handling as needed

        // Use the provided Roll Number to fetch the student data
        EmpDao dao = new EmpDao(HibernateUtil.getSessionFactory());
        Student student = dao.getStudentByRollNumber(rollNumber);
        System.out.println(student);
        
        // Set the fetched data as an attribute in the request
        String name = student.getName();
        int rollno = student.getRollno();
        String branch = student.getBranch();
        String batch = student.getBatch();
        int mobile = student.getMobile();
        req.setAttribute("rollno", rollno);
        req.setAttribute("name", name);
        req.setAttribute("branch", branch);
        req.setAttribute("batch", batch);
        req.setAttribute("mobile", mobile);

        // Forward the request to the JSP page for displaying the data
        req.getRequestDispatcher("/Show.jsp").forward(req, resp);
    }
}


