<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Appointments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: white;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e9e9e9;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .back-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #4caf50;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>View Appointments</h2>
        <!-- If there are appointments -->
        <table>
            <tr>
                <th>Appointment ID</th>
                <th>Patient Name</th>
                <th>Age</th>
                <th>Disease</th>
                <th>Date</th>
                <th>Contact</th>
                <th>Status</th>
                <th>Doctor Name</th>
            </tr>
            <tr>
                <td>101</td>
                <td>Karthik</td>
                <td>30</td>
                <td>Relationship Problems</td>
                <td>2024-12-08</td>
                <td>9234567890</td>
                <td>Pending</td>
                <td>Dr. Smith</td>
            </tr>
            
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
        </table>

        <!-- "Go Back" Button -->
        <div class="button-container">
            <a href="javascript:history.back()" class="back-button">Go Back</a>
        </div>

        <!-- If there are no appointments -->
        <!-- <p class="no-data">No appointments found!</p> -->
    </div>
</body>
</html>
