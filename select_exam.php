<?php
session_start();
if(!isset($_SESSION["username"]))
{

    ?>
    <script type="text/javascript">
        window.location="login.php";
    </script>
    <?php

}
?>
<?php
include "connection.php";
include "header.php";
?>


    <div class="row" style="margin: 0px; padding:0px; margin-bottom: 50px;">

        <div class="col-lg-6 col-lg-push-3" style="min-height: 500px; background-color: white;">

            <?php
            $res=mysqli_query($link,"select * from exam_category");
            while($row=mysqli_fetch_array($res))
            {
                ?>


    <html>
    <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .button {
                      border-radius: 4px;
                      background-color: #191970;
                      border: none;
                      color: #FFFFFF;
                      text-align: center;
                      font-size: 28px;
                      padding: 20px;
                      width: 200px;
                      transition: all 0.5s;
                      cursor: pointer;
                      margin: 5px;
                    }

            .button span {
                      cursor: pointer;
                      display: inline-block;
                      position: relative;
                      transition: 0.5s;
                    }

            .button span:after {
                      content: '\00bb';
                      position: absolute;
                      opacity: 0;
                      top: 0;
                      right: -20px;
                      transition: 0.5s;
                    }

            .button:hover span {
                      padding-right: 25px;
                    }

            .button:hover span:after {
                      opacity: 1;
                      right: 0;
                    }
        </style>
    </head>
<body>



<button class="button" value="<?php echo $row["category"]; ?>" onclick="set_exam_type_session(this.value);"><span><?php echo $row["category"];?> </span></button>

</body>
</html>

                <?php

            }
            ?>

        </div>
    </div>


<?php
include "footer.php";
?>

<script type="text/javascript">
    function set_exam_type_session(exam_category)
    {
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                window.location = "dashboard.php";
            }
        };
        xmlhttp.open("GET","forajax/set_exam_type_session.php?exam_category="+ exam_category,true);
        xmlhttp.send(null);
    }
</script>
