<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Navbar styling */
        .navbar {
            background-color: #4CAF50; /* Green color */
            font-family: 'Arial', sans-serif;
            border-radius: 5px;
            margin-bottom: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: flex;
            justify-content: flex-end; /* Align navbar items to the right */
            padding: 10px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            display: inline-block;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #45a049; /* Slightly darker green for hover */
            color: #FFD700; /* Gold color on hover */
            border-radius: 5px;
        }

        .navbar a.active {
            background-color: #3e8e41; /* Darker green for active state */
            border-radius: 5px;
        }

        .navbar a:active {
            background-color: #2e7d32; /* Forest Green for active button */
            color: white;
        }

        body {
            font-family: 'Verdana', sans-serif;
            background-color: #e8f5e9; /* Light green background, complements the navbar */
            color: #333;
        }

        .modal-header, .modal-footer {
            background-color: #4CAF50;
            color: white;
        }

        .dropdown-menu {
            background-color: #f9fbe7; /* Soft lime-green background for dropdown */
        }

        .dropdown-menu > li > a {
            color: #4CAF50;
            font-weight: bold;
            padding: 10px;
        }

        .dropdown-menu > li > a:hover {
            background-color: #c5e1a5; /* Lighter green for hover in dropdown */
            color: #2e7d32;
        }

        .navbar .dropdown {
            margin-left: 15px;
        }
    </style>
    <title>JFSD</title>
</head>
<body>
    <h2 style="text-align: center; color: #4CAF50;">Mental Health Management </h2>

    <div class="navbar">
        <a href="/" class="active">Home</a>
        <div class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="patientlogin">Patient Login</a></li>
                <li><a href="doctorlogin">Doctor Login</a></li>
                <li><a href="adminlogin">Admin Login</a></li>
            </ul>
        </div>
        <a href="#" data-toggle="modal" data-target="#registrationModal">Registration</a>
    </div>

    <!-- Registration Modal -->
    <div id="registrationModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Registration</h4>
                </div>
                <div class="modal-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="patientreg">Patient Registration</a></li>
                        <li class="list-group-item"><a href="doctorreg">Doctor Registration</a></li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
