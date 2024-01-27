<%@ page import="java.util.List" %>
<%@ page import="Entity.Student" %> <!-- Import the correct package for the Student class -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            margin-top: 20px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        p {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Student Information</h2>
    
    <% 
        // Get the list of students from the request attribute
        List<Student> studentList = (List<Student>) request.getAttribute("studentList");

        if (studentList != null && !studentList.isEmpty()) {
    %>
        <table>
            <tr>
                <th>Roll No</th>
                <th>Name</th>
                <th>Branch</th>
                <th>Batch</th>
                <th>Mobile</th>
            </tr>

            <% 
                for (Student student : studentList) {
            %>
            <tr>
                <td><%= student.getRollno() %></td>
                <td><%= student.getName() %></td>
                <td><%= student.getBranch() %></td>
                <td><%= student.getBatch() %></td>
                <td><%= student.getMobile() %></td>
            </tr>
            <% 
                }
            %>
        </table>
    <% 
        } else {
    %>
        <p>No student records found.</p>
    <% 
        }
    %>

</body>
</html>
