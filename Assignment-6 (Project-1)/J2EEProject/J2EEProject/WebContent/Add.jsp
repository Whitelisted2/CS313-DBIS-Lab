<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Add a Book</title>
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
				background-image: url(images/addbg.jpg);
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
					<a href="Home.jsp"><img draggable="false" src="images/WTWE.png" width=350px onclick="gotohome()"></a>
				</div>
				<hr><br>
				<h1 style="text-align:center; color:rgba(255,255,240,1);">Add a new book</h1>
            	<div class="login-form">
                	<form action="AddServlet" method="POST">
                    	<div class="group">
                        	<label for="book_id" class="label">BOOK ID</label>
                        	<input id="book_id" name="book_id" type="number" class="input" onKeyPress="if(this.value.length==6) return false;" required>
                    	</div>
                   		<div class="group">
                        	<label for="title" class="label">TITLE</label>
                        	<input id="title" name="title" type="text" class="input" onKeyPress="if(this.value.length==50) return false;" required>
                    	</div>
                    	<div class="group">
                        	<label for="category" class="label">CATEGORY</label>
                        	<input id="category" name="category" type="text" class="input" list="categories" onKeyPress="if(this.value.length==20) return false;" required>
							<datalist id="categories">
							  <option>Adventure</option>
							  <option>Children's</option>
							  <option>Classic</option>
							  <option>Comedy</option>
							  <option>Cookbook</option>
							  <option>Education</option>
							  <option>Fantasy</option>
							  <option>Fiction</option>
							  <option>Horror</option>
							  <option>Mystery</option>
							  <option>Memoir</option>
							  <option>Non-fiction</option>
							  <option>Poetry</option>
							  <option>Satire</option>
							  <option>Sci-Fi</option>
							  <option>Thriller</option>
							</datalist>
                    	</div>
                    	<div class="group">
                        	<label for="author" class="label">AUTHOR</label>
                        	<input id="author" name="author" type="text" class="input" onKeyPress="if(this.value.length==50) return false;" required>
                    	</div>
                    	<div class="group">
                        	<input type="submit" class="button" value="ADD NOW!">
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
			<div class="footer-copy">
				&copy; 2022 WTWE & Co.
			</div>
		</footer>
	</body>
</html>