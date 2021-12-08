<?php
    include 'top.php';
?>

<?php

    $conn = mysqli_connect("localhost", "root", "", "bazaseriale");

    $sql = "SELECT * FROM seriale";

    $result1 = mysqli_query($conn, $sql);
    if(isset($_POST['']))
?>
<form method="POST">
<div class="select-box">
  <div class="options-container">
    <div class="option">
      <input type="radio" class="radio" id="dramat" name="category"/>
      <label for="dramat">Dramat</label>
    </div>

    <div class="option">
      <input type="radio" class="radio" id="kryminal" name="category" />
      <label for="kryminal">Kryminał</label>
    </div>

    <div class="option">
      <input type="radio" class="radio" id="scifi" name="category" />
      <label for="scifi">Sci-Fi</label>
    </div>

    <div class="option">
      <input type="radio" class="radio" id="athriller" name="category" />
      <label for="thriller">Thriller</label>
    </div>

    <div class="option">
      <input type="radio" class="radio" id="fantasy" name="category" />
      <label for="fantasy">Fantasy</label>
    </div>
</form>
    
  </div>

  <div class="selected">
    Wybierz kategorię
  </div>
</div>
</div>

<script src="main.js"></script>


<?php
    include 'bot.php';
?>