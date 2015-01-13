 <?php include "database.php"; ?>
<?php session_start(); ?>
<?php
	//Create Select Query
	$query="select * from shouts order by time desc limit 100";
	$shouts = mysqli_query($con,$query);

 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>PHP Quizzer!</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
  </head>
  <body>
    <div id="container">
      <header>
        <div class="container">
          <h1>PHP Quizzer</h1>
	</div>
      </header>


      <main>
	<div class="container">
	     <h2>You are Done!</h2>
	     <p>Congrats! You have completed the test</p>
	     <p>Final socre: <?php echo $_SESSION['score']; ?></p>
	     <a href="question.php?n=1" class="start">Take Test Again</a>
	     <?php session_destroy(); ?>
	</div>
      </main>


    <footer>
      <div class="container">
      	   Copyright &copy; 2015, PHP Quizzer
      </div>
    </footer>
  </body>
</html>