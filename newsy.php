<section class="recentNews">
<!DOCTYPE html>
<html lang="pl">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="icon" type="image/x-icon" href="grafika/miniaturka.svg">
    <meta name="title" content="Papajak">
    <meta charset="utf-8">
</head>
<body>
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
                <a href="#"><img src="'. $serial["zdjecie"] .'" class="img-fluid"></a>
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