<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session Expired</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ff7e5f, #feb47b); /* Stunning gradient */
            color: #fff;
            text-align: center;
            animation: fadeIn 2s ease-in-out;
        }

        h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.5); /* Glowing effect */
        }

        a {
            text-decoration: none;
            background: #fff;
            color: #ff7e5f;
            padding: 15px 25px;
            border-radius: 50px;
            font-size: 1.2rem;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease-in-out;
        }

        a:hover {
            background: #ff7e5f;
            color: #fff;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.5);
            transform: scale(1.1); /* Slight zoom effect */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            a {
                font-size: 1rem;
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <h1>Session Expired</h1>
    <a href="stulogin">Back</a>
</body>
</html>
