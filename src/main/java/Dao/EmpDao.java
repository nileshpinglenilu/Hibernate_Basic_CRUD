package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.TypedQuery;

import org.hibernate.HibernateException;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Entity.Student;

public class EmpDao 
{
	private SessionFactory sessionFactory;

	public EmpDao(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}
	public boolean saveStudent(Student s)
	{
		boolean flag = false;
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		int i = (Integer) session.save(s);
		if(i>0)
		{
			System.out.println("Data Saved..!");
			flag = true;
		}
		else
		{
			System.out.println("Failed..!");
		}
		tx.commit();
		session.close();
		return flag;
	}
	public Student getStudentByRollNumber(int rollNumber) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = session.beginTransaction();
	    
	    Student student = session.get(Student.class, rollNumber);
	    tx.commit();
	    session.close();
	    
	    return student;
	}
	public List<Student> getAllStudents() 
	{
		Session session = sessionFactory.openSession();
	    Transaction tx = session.beginTransaction();
	    TypedQuery<Student> query = session.createQuery("FROM Student");
	    List<Student> result = query.getResultList();
	    tx.commit();
	    session.close();
	    return result;
	}
	public void deleteStudent(int rollnumber) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = session.beginTransaction();;
	    Student student = session.get(Student.class, rollnumber);
	    if (student != null) {
            // Delete the entity
            session.delete(student);
            System.out.println("Record with roll number " + rollnumber + " deleted successfully.");
        } else {
            System.out.println("Record with roll number " + rollnumber + " not found.");
        }
	    tx.commit();
	    session.close();
	}







	
}
