<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Success</title>
    <style>
        /* General Page Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f9f9;
            color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        /* Main container */
        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 30px;
            background-color: #e0f7da;
            border-radius: 10px;
            border: 1px solid #a5d6a7;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* Emoji Styling */
        .emoji {
            font-size: 70px;
            margin-bottom: 20px;
            color: #66bb6a;
            animation: bounce 1.2s infinite;
        }

        /* Success Message Styling */
        .message {
            font-size: 24px;
            color: #388e3c;
            font-weight: bold;
            margin-bottom: 30px;
        }

        /* Button Styling */
        .login-btn {
            padding: 12px 25px;
            background-color: #66bb6a;
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #43a047;
        }

        /* Bounce animation for the emoji */
        @keyframes bounce {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }
            .message {
                font-size: 20px;
            }
            .emoji {
                font-size: 60px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="emoji">&#128513;</div>
        <div class="message">
            Appointment successfully booked! We’ll notify you about any updates.
        </div>
        <a href="/patienthome" class="login-btn">Return to Home</a>
    </div>
</body>
</html>
