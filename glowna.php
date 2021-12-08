<div class="glownaa">
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel" style="margin: auto; width: 29%;">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="3000">
      <img src="grafika/swinkapeppa.jpg" class="d-block w-100">
    </div>

        <?php

        $conn = mysqli_connect("localhost", "root", "", "bazaseriale");

        $sql = "SELECT * FROM seriale";

        $result = mysqli_query($conn, $sql);

        while($serial = mysqli_fetch_assoc($result)) 
        {
            
            echo '
            
            <div class="carousel-item" data-bs-interval="3000">
                <img src="grafika/'.$serial["zdjecie"].'" class="d-block w-100">
            </div>

            ';

        }

        mysqli_close($conn);

        ?>
        
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">poprzedni</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">nastepny</span>
  </button>
</div>
      </div>