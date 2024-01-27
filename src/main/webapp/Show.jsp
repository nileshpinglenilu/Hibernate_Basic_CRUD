<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Information</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1 mt-5">
                <div class="card">
                    <div class="card-header text-center fs-3">
                        Student Information
                    </div>
                    <div class="card-body">
                        <!-- Form for entering Roll Number -->
                        <form method="post" action="show">
                            <div class="mb-3">
                                <label for="rollNumber" class="form-label">Enter Roll Number:</label>
                                <input type="text" class="form-control" id="rollNumber" name="rollNumber" required>
                            </div>
                            <button type="submit" class="btn btn-primary col-md-12">Show Details</button>
                        </form>
                        
                        <!-- Table to display employee information -->
                        <table class="table table-bordered mt-4">
                            <thead>
                                <tr>
                                    <th>Roll Number</th>
                                    <th>Name</th>
                                    <th>Branch</th>
                                    <th>Batch</th>
                                    <th>Mobile Number</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${not empty rollno}">
                                    <tr>
                                        <td>"<%= request.getAttribute("rollno") %>"</td>
                                        <td>"<%= request.getAttribute("name") %>"</td>
                                        <td>"<%= request.getAttribute("branch") %>"</td>
                                        <td>"<%= request.getAttribute("batch") %>"</td>
                                        <td>"<%= request.getAttribute("mobile") %>"</td>
                                    </tr>
                                </c:if>
                            </tbody>
                        </table>
                        
                        <!-- Back button -->
                        <a href="index.jsp" class="btn btn-primary col-md-12 mt-2">Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
