<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Issue a Book</title>
		<meta charset="ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
		<link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,700&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@800&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/addstyle.css">
		<style>
		body{
				background-image: url(images/1200845.jpg);
				height: 100%;
	            background-position: center;
	            background-repeat: no-repeat;
	            background-size: cover;
	            z-index: -10;
			}
		</style>
	</head>
	
	<body>
    	<div class="login-wrap">
        	<div class="login-html">
				<div class="flex-container">
					<a href="Home.jsp"><img src="images/WTWE.png" draggable="false" width=350px onclick="gotohome()"></a>
				</div>
				<hr><br>
				<h1 style="text-align:center; color:rgba(255,255,240,1);">Issue a book</h1>
            	<div class="login-form">
                	<form action="IssueServlet" method="POST">
                    	<div class="group">
                        	<label for="student_id" class="label">STUDENT ID</label>
                        	<input id="student_id" name="student_id" type="number" class="input" onKeyPress="if(this.value.length==5) return false;" required>
                    	</div>
                    	<div class="group">
                        	<label for="book_id" class="label">BOOK ID</label>
                        	<input id="book_id" name="book_id" type="number" class="input" onKeyPress="if(this.value.length==6) return false;" required>
                    	</div>
                   		<div class="group">
                        	<label for="issue_date" class="label">ISSUE DATE</label>
                        	<input id="issue_date" name="issue_date" type="date" class="input" required>
                    	</div>
                   		
                    	<div class="group">
                        	<input type="submit" class="button" value="ISSUE NOW!">
                    	</div>
					</form>
            	</div>
			</div>
        </div>
		<br>
		<br>
		<footer>
			Click on the logo to navigate back to the home page!
		</footer>
		<footer>
			<div class="footer-copy" style="background-color:brown;">
				&copy; 2022 WTWE & Co.
			</div>
		</footer>
	</body>
</html>