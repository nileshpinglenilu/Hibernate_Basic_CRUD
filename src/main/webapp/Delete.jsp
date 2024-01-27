<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        /* Added for better spacing */
        .mb-3 {
            margin-bottom: 15px;
        }
        /* Added for consistent form control styling */
        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete Student</h2>
        <form method="post" action="deleteStudent">
            <div class="mb-3">
                <label for="rollNumber" class="form-label">Enter Roll Number:</label>
                <input type="text" class="form-control" id="rollNumber" name="rollNumber" required>
            </div>
            <button type="submit" class="btn">Delete</button>
        </form>
    </div>
</body>
</html>
