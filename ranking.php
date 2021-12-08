<?php
    include 'top.php';
?>

<h2>
    TOP 3 w rankingu seriali 2021 roku!
</h2>

<?php

$conn = mysqli_connect("localhost", "root", "", "bazaseriale");

    $sql = "SELECT * FROM seriale ORDER BY srednia_ocen DESC LIMIT 3";

    $result = mysqli_query($conn, $sql);

    while($serial = mysqli_fetch_assoc($result)) 
    {
        
        echo '
        
        <div class="serialbox col-sm-12 d-flex">
            <img src="grafika/'.$serial["zdjecie"].'" class="img-fluid">

            <div class="opisSerialboxoffice">
                <h3 class="ct-blog-header">
                '.$serial["nazwa"].'
                </h3>
            </div>

        </div>
        
        ';

    }

    mysqli_close($conn);


?>

<?php
    include 'bot.php';
?>