<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LuanS1mple</title>
    <style>
        body {
            background-image: url('/img/bgOnepiece.jpg'); /* ??m b?o hình ?nh trong th? m?c static/img */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            height: 100vh; /* Chi?u cao toàn b? trang */
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f2f2f2;
        }

        form {
            text-align: center;
            padding: 30px;
            border: 2px solid #ddd;
            border-radius: 10px;
            background-color: white;
            width: 80%;
            max-width: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            margin-bottom: 20px;
            font-size: 36px;
            color: #333;
        }

        input[type="text"], input[type="submit"] {
            padding: 15px;
            font-size: 18px;
            width: 80%;
            margin-bottom: 20px;
            border: 2px solid #ddd;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="chapter" method="get">
        <h1>Find Chapter</h1>
        <input type="text" placeholder="Chapter number" name="chapter" required />
        <input type="submit" value="FIND" />
    </form>
</body>
