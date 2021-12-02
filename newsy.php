    <section class="recentNews">
    <div class="container">
        <h2 class="news-title">Newsy ze świata seriali</h2>
        <div class="wiersz" data-animation="hierarchical-display">

<?php

    $conn = mysqli_connect("localhost", "root", "", "bazaseriale");

    $sql = "SELECT * FROM seriale";

    $result = mysqli_query($conn, $sql);

    while($serial = mysqli_fetch_assoc($result)) {
        
        echo '
        
        <div class="serialbox col-sm-12 d-flex">
            <img src="grafika/'. $serial["zdjecie"] .'" class="img-fluid">

            <div class="opis serialboxoffice">
                <h3 class="ct-blog-header">
                '. $serial["nazwa"] .'
                </h3>
            </div>

            <div class="ocene ">
                fsfdfds
            </div>

        </div>
        
        ';

    }

    mysqli_close($conn);

?>

        </div>
</section>