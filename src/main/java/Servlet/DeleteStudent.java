package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.EmpDao;
import conn.HibernateUtil;

@WebServlet("/deleteStudent")
public class DeleteStudent extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int rollNumber = Integer.parseInt(req.getParameter("rollNumber"));
        System.out.println("---" + rollNumber + "--------");
        EmpDao dao = new EmpDao(HibernateUtil.getSessionFactory());
        dao.deleteStudent(rollNumber);
        req.setAttribute("message", "Student with roll number " + rollNumber + " deleted successfully.");
        req.getRequestDispatcher("/Delete.jsp").forward(req, resp);
        resp.setStatus(HttpServletResponse.SC_OK);
    }
}

