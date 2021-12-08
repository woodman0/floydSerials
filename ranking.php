<?php
    include 'top.php';
?>


<section class="recentNews">
    <div class="wiersz" data-animation="hierarchical-display">
        <div class="container">
            <h2>
                TOP 5 w rankingu seriali 2021 roku!
            </h2>

        <?php
        $i = 1;
        $conn = mysqli_connect("localhost", "root", "", "bazaseriale");

            $sql = "SELECT * FROM seriale ORDER BY srednia_ocen DESC LIMIT 5";

            $result = mysqli_query($conn, $sql);

            while($serial = mysqli_fetch_assoc($result)) 
            {
                
                echo '
                
                <div class="serialbox col-sm-12 d-flex">
                    <h1>'.$i++.'.</h1>
                    <img src="grafika/'.$serial["zdjecie"].'" class="img-fluid">

                    <div class="opisSerialboxoffice">
                        <h3 class="ct-blog-header">
                        '.$serial["nazwa"].'
                        </h3>
                    </div>

                </div>
                <br>
                
                ';

            }

            mysqli_close($conn);


        ?>

        </div>
    </div>
</section

<?php
    include 'bot.php';
?>