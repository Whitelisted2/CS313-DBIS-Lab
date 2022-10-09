<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>WTWE Library Management System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="icon" href="images/favicon.png">
    <style>
        html{
            height:100%
        }
        body{
            background-image: url(images/253332.jpg);
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            z-index: -10;
        }
        #b2:after{
            content:"ISSUE A BOOK";
        }
        #b1:after{
            content:"ADD A NEW BOOK";
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logosmall">
        <a href="Home.jsp">
            <img class="nav-logo" src="images/WTWE.png" alt="dark_logo">
        </a>
    </div>
    <div class="cloumn-flexing">
        <span><a class="nav-list" href="Add.jsp">Add a book</a></span>
        <span><a class="nav-list" href="Issue.jsp">Issue a book</a></span>
    </div>
</div>
<br> <br> <br> <br> 
<button id="b1" style="left:15% ; bottom:-20%" onclick="window.location.href='Add.jsp'">Add a new book</button> 

<button id="b2" style="right:-20% ; bottom:-30%" onclick="window.location.href='Issue.jsp'">Issue a book</button> 

</body>
</html>