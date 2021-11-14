<?php 
session_start();
include "../connection.php";
include "header.php";
if(!isset($_SESSION["admin"]))
{
    ?>
    <script type="text/javascript">
            window.location="index.php";
    </script>
    <?php
}
?>

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Results of all users</h1>
                    </div>
                </div>
            </div>
           
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                           
                            <div class="card-body">
           <center>
                <h3>All Results</h3>
            </center>

            <?php
            $count=0;
            $res=mysqli_query($link,"select * from exam_results order by id desc");
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
                echo "<th>"; echo "Username";               echo"</th>";
                echo "<th>"; echo "Quiz Category";          echo"</th>";
                echo "<th>"; echo "Total Questions";        echo"</th>";
                echo "<th>"; echo "Correct Answers";        echo"</th>";
                echo "<th>"; echo "Wrong Answers";          echo"</th>";
                echo "<th>"; echo "Exam Time";              echo"</th>";
                echo "</tr>";

                while($row=mysqli_fetch_array($res))
                {


                echo "<tr>";
                echo "<th>"; echo $row["username"];     echo"</th>";
                echo "<th>"; echo $row["exam_type"];        echo"</th>";
                echo "<th>"; echo $row["total_question"];       echo"</th>";
                echo "<th>"; echo $row["correct_answer"];       echo"</th>";
                echo "<th>"; echo $row["wrong_answer"];     echo"</th>";
                echo "<th>"; echo $row["exam_time"];        echo"</th>";
                echo "</tr>";


                }
                echo "</table>";

            }
            ?>      
  

                            </div>
                        </div> 

                    </div>
                    <!--/.col-->

             
                             

                                            </div>
                                        </div><!-- .animated -->
                                    </div><!-- .content -->
                                
<?php 
include "footer.php";
?>
