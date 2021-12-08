<?php
    include 'top.php';
?>
<section class="recentNews">
    <div class="container">
        <h2 class="news-title">Wszystkie seriale</h2>
        <br>
        <div class="wiersz" data-animation="hierarchical-display">

<?php

    $conn = mysqli_connect("localhost", "root", "", "bazaseriale");

    $sql = "SELECT * FROM seriale";

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

            <div class="ocene ">
                <a>ocena serialu:

            </div>

        </div>
        <br>
        ';

    }

    mysqli_close($conn);

?>

        </div>
</section>
<?php
    include 'bot.php';
?>