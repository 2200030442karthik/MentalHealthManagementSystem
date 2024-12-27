<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>🌿 Home | Mental Health Management System - Empowering Minds, Transforming Lives 🌟</title>

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(180deg, rgba(144, 224, 239, 0.9), rgba(250, 216, 221, 0.9));
            color: #333;
            line-height: 1.6;
            overflow-x: hidden;
        }

        header {
            text-align: center;
            padding: 40px;
        }

        header h1 {
            font-size: 2.5rem;
            color: #4CAF50;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        header p {
            font-size: 1.2rem;
            color: #555;
            margin-top: 10px;
        }

        .container {
            width: 80%;
            margin: 30px auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }

        .card {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
            flex: 1 1 calc(33.333% - 20px);
            max-width: calc(33.333% - 20px);
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        .card img {
            max-width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }

        .card h3 {
            margin: 15px 0 10px;
            color: #4CAF50;
        }

        .card p {
            font-size: 1rem;
            color: #555;
        }

        .card a, .card button {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border-radius: 5px;
            text-decoration: none;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .card a:hover, .card button:hover {
            background-color: #45A049;
        }

        footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
            color: #fff;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
        }

        /* Updated Puzzle Challenge Styling */
        #puzzle-container {
            margin-top: 15px;
            display: none;
        }

        #puzzle-answer {
            padding: 8px;
            border: 1px solid #4CAF50;
            border-radius: 4px;
            width: 80%;
            margin-bottom: 10px;
        }

        #puzzle-answer:focus {
            outline: none;
            border-color: #45A049;
            box-shadow: 0 0 5px rgba(69, 160, 73, 0.5);
        }

        #puzzle-feedback {
            margin-top: 10px;
            color: #4CAF50; /* Updated to green */
        }

        #puzzle-container button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #puzzle-container button:hover {
            background-color: #45A049;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header h1 {
                font-size: 2rem;
            }

            .card img {
                height: 150px;
            }

            .card {
                flex: 1 1 calc(50% - 20px);
                max-width: calc(50% - 20px);
            }
        }

        @media (max-width: 480px) {
            .card {
                flex: 1 1 100%;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <header>
        <h1>Welcome to the Mental Health Management System</h1>
        <p>Your companion for relaxation and mental well-being.</p>
    </header>

    <div class="container">
        <!-- Relaxation Video -->
        <div class="card">
            <img src="images/meditation.jpg" alt="Meditation">
            <h3>Guided Meditation Video</h3>
            <p>Watch this video to relax and rejuvenate your mind.</p>
            <a href="https://www.youtube.com/watch?v=Hzi3PDz1AWU&t=4s" target="_blank">Watch Now</a>
        </div>

        <!-- Interactive Puzzle Challenge -->
        <div class="card">
            <img src="images/puzzle.png" alt="Interactive Puzzle">
            <h3>Interactive Puzzle Challenge</h3>
            <p>Engage your mind with this fun and interactive puzzle game.</p>
            <button onclick="startPuzzleChallenge()">Start Puzzle</button>
            <div id="puzzle-container">
                <p>Solve this: What comes next in the sequence? 2, 4, 6, 8, ?</p>
                <input type="text" id="puzzle-answer" placeholder="Your answer">
                <button onclick="checkPuzzleAnswer()">Submit</button>
                <p id="puzzle-feedback"></p>
            </div>
        </div>

        <!-- Inspirational Quote -->
        <div class="card">
            <img src="images/inspiratoin.jpg" alt="Inspirational Quote">
            <h3>Daily Motivation</h3>
            <p>"The only way to do great work is to love what you do." - Steve Jobs</p>
        </div>
    </div>

    <script>
        function startPuzzleChallenge() {
            const puzzleContainer = document.getElementById('puzzle-container');
            puzzleContainer.style.display = 'block';
        }

        function checkPuzzleAnswer() {
            const answer = document.getElementById('puzzle-answer').value.trim();
            const feedback = document.getElementById('puzzle-feedback');
            if (answer === '10') {
                feedback.textContent = "Correct! Great job!";
            } else {
                feedback.textContent = "Try again! Hint: It's the next even number.";
            }
        }
    </script>
</body>
</html>