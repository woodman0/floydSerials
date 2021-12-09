<?php
    include 'top.php';
?>


<form method="POST">


    <select name="kategorie" class="selected">
    <option value="">Wybierz kategorie</option>
    <option value="Fantasy" >Fantasy</option>
    <option value="Sci-Fi">Sci-Fi</option>
    <option value="Dramat">Dramat</option>
    <option value="Thriller">Thriller</option>
    <option value="Komedia">Komedia</option>
  </select>
<input type="submit" name="submit" value="Szukaj" class="input-k">
</div>
</form>





<?php
    if(isset($_POST['submit'])){
     
    $conn = mysqli_connect("localhost", "root", "", "bazaseriale");
    
    $name = $_POST['kategorie'];
    

    $sql = "SELECT * FROM seriale WHERE gatunek = '$name'";
    

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
        <br>
        ';

    }

    mysqli_close($conn);
  }

?>






<script src="main.js"></script>


<?php
    include 'bot.php';
?>