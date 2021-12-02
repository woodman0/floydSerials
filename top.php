<?php
session_start();
?>

<!DOCTYPE html>
<html lang="pl">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="icon" type="image/x-icon" href="grafika/miniaturka.svg">
    <title>Floyd Serials</title>
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-1.7.2.min.js"
    integrity="sha256-R7aNzoy2gFrVs+pNJ6+SokH04ppcEqJ0yFLkNGoFALQ="
    crossorigin="anonymous"></script>
    <link rel="stylesheet" href="zmd.hierarchical-display.min.css">
    <script src="jquery.zmd.hierarchical-display.min.js"></script>
    <link href="style.css" rel="stylesheet">
</head>
<body>

    <div class="header">
        <div class="logo">
            <img src="grafika/logoS.png">
            <a class="logoTekst">FLOYD SERIALS</a>
            
        </div>
        <div class="logowanie">
            <form action="logowanie.php" method="POST">
                
                <input type="submit" value="Zaloguj się"/><br />
            </form>
            <?php
                if(isset($_SESSION['blad'])){
                echo $_SESSION['blad'];
                }
            ?>
            <form action="rejestracja.php">
                <input type="submit" value="Zarejestruj się">
            </form> 
        </div>
    </div>
    <div class="main">
        <div class="kategorie">
            <div class="glowna">
                <a href="index.php">Strona główna</a>
            </div>
            <div class="kategorieSeriali">
                <a href="kategorie.php">Kategorie</a>
            </div>
            <div class="seriale">
                <a href="seriale.php">Seriale</a>
            </div>
            <div class="ranking">
                <a href="ranking.php">Ranking Seriali</a>
            </div>
            <div class="aktorzy">
                <a href="aktorzy.php">Aktorzy</a>
            </div>
        </div>