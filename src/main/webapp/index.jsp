<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.1);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            border-radius: 15px 15px 0 0;
            padding: 15px;
        }
        .card-body {
            padding: 30px;
        }
        .btn-custom {
            font-size: 1.2rem;
            padding: 10px 30px;
            border-radius: 25px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center">
                        <h3 class="fw-bold">Home Page</h3>
                    </div>
                    <div class="card-body text-center">
                        <a href="Registration.jsp" class="btn btn-primary btn-custom">Registration</a>
                        <a href="Show.jsp" class="btn btn-success btn-custom">Find Student</a>
                        <form action="showAll" method="post">
                            <button type="submit" class="btn btn-success btn-custom">Show All Details</button>
                        </form>
                        <a href="Delete.jsp" class="btn btn-primary btn-custom">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
