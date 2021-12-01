<section class="recentNews">
    <div class="container">
        <h2 class="news-title">Recent News</h2>
        <div class="row" data-animation="hierarchical-display">



<?php

    $conn = mysqli_connect("localhost", "root", "", "bazaseriale");

    $sql = "SELECT * FROM seriale";

    $result = mysqli_query($conn, $sql);

    while($serial = mysqli_fetch_assoc($result)) {
        
        echo '
        
        <div class="ct-blog col-sm-6 col-md-2">
            <div class="inner">
            <div class="fauxcrop">
                <a href="#"><img src="eeeee/'. $serial["zdjecie"] .'" class="img-fluid"></a>
            </div>
            <div class="ct-blog-content">
                <h3 class="ct-blog-header">
                '. $serial["nazwa"] .'
                </h3>
            </div>
            </div>
        </div>
        
        ';

    }

    mysqli_close($conn);


?>



        





        </div>
        <div class="btn-news btn-contests">
        <a href="#">VIEW ALL NEWS</a>
        </div>
    </div>
</section>