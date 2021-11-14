<?php	
session_start();
	include "header.php";
	include "connection.php";
		if(!isset($_SESSION["username"]))
	{
		?>
		<script type="text/javascript">
			window.location="login.php";
		</script>
		<?php
	}





?>


        <div class="row" style="margin: 0px; padding:0px; margin-bottom: 50px;">

            <div class="col-lg-6 col-lg-push-3" style="min-height: 500px; background-color: white;">
            <center>
				<h1>Old Quiz Results</h1>
			</center>

			<?php
			$count=0;
			$res=mysqli_query($link,"select * from exam_results where username='$_SESSION[username]' order by id desc");
			$count=mysqli_num_rows($res);
			if($count==0)
			{
				?>
				<h1>No results found</h1>
				<?php
			}
			else
			{
				echo "<table class='table table-bordered'>";
				echo "<tr style='background-color: #00cc66; color:white;'>";
				echo "<th>"; echo "Username"; 				echo"</th>";
				echo "<th>"; echo "Quiz Category"; 			echo"</th>";
				echo "<th>"; echo "Total Questions"; 		echo"</th>";
				echo "<th>"; echo "Correct Answers"; 		echo"</th>";
				echo "<th>"; echo "Wrong Answers"; 			echo"</th>";
				echo "<th>"; echo "Exam Time"; 				echo"</th>";
				echo "</tr>";

				while($row=mysqli_fetch_array($res))
				{


				echo "<tr>";
				echo "<th>"; echo $row["username"];		echo"</th>";
				echo "<th>"; echo $row["exam_type"];		echo"</th>";
				echo "<th>"; echo $row["total_question"];		echo"</th>";
				echo "<th>"; echo $row["correct_answer"];		echo"</th>";
				echo "<th>"; echo $row["wrong_answer"];	 	echo"</th>";
				echo "<th>"; echo $row["exam_time"];		echo"</th>";
				echo "</tr>";


				}
				echo "</table>";

			}
			?>		
			</div>
        </div>
<?php 
include "footer.php"
?>

