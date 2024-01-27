package Entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student 
{
	
	public Student(int rollno, String name, String branch, String batch, int mobile) {
		super();
		this.rollno = rollno;
		this.name = name;
		this.branch = branch;
		this.batch = batch;
		this.mobile = mobile;
	}
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Id
	private int rollno;
	private String name;
	private String branch;
	private String batch;
	private int mobile;
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public int getMobile() {
		return mobile;
	}
	public void setMobile(int mobile) {
		this.mobile = mobile;
	}
	@Override
	public String toString() {
		return "Student [rollno=" + rollno + ", name=" + name + ", branch=" + branch + ", batch=" + batch + ", mobile="
				+ mobile + "]";
	}
	
}
