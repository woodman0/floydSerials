<?php
    session_start();

    var_dump($_POST);
    if(isset($_POST['haslo1']))
    {
        $jest_git=true;
        $login= $_POST['login'];

        if((strlen($login)<3) || (strlen($login)>10))
        { 
            $jest_git=false;
            $_SESSION['blad_login']="Login musi posiadać od 3 do 10 znaków";
        }
        if(ctype_alnum($login)==false)
        {
            $jest_git=false;
            $_SESSION['blad_login']="Login może składać się z tylko liter bez polskich znaków";
        }

        $haslo1=$_POST['haslo1'];
        $haslo2=$_POST['haslo2'];

        if((strlen($haslo1)<5) || (strlen($haslo1)>15))
        {
            $jest_git=false;
            $_SESSION['blad_haslo']="Hasło musi posiadać od 5 do 15 znaków";
        }
        if($haslo1!=$haslo2)
        {
            $jest_git=false;
            $_SESSION['blad_haslo']="Podane hasła nie są identyczne";
        }

        $polaczenie = mysqli_connect("localhost", "root", "", "bazaseriale");
        $rezultat = $polaczenie->query("SELECT idUzytkownik FROM uzytkownik WHERE login='$login'");

        $ile_uzytkownikow = $rezultat->num_rows;
        if($ile_uzytkownikow>0)
        {
            $jest_git=false;
            $_SESSION['blad_login']="Istnieje już użytkownik o takim loginie.";
        }



        if($jest_git==true)
        {
            if ($polaczenie->query("INSERT INTO uzytkownik (login, haslo) VALUES ('$login', '$haslo1');"))
            {
                header('Location: index.php');
                $_SESSION['zalogowany'] = true;
            }
            else
            {
                echo "nie dziala";
            }
        } 
        $polaczenie->close();

    }
    
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <title>Flod Serials - rejestracja</title>
    <link href="style.css" rel="stylesheet">
</head>
<body class="body_rejestracja">

<form method="POST" class="rej_box">
    <h1>Zarejestuj się</h1>
    <input type="text" name="login" placeholder="Podaj login"/><br />
    <?php
        if(isset($_SESSION['blad_login']))
        {
            echo '<div class="blad">'.$_SESSION['blad_login'].'</div>';
            unset($_SESSION['blad_login']);
        }
    ?>


     <input type="text" name="haslo1"  placeholder="Podaj hasło"/><br />
    <?php
    
        if(isset($_SESSION['blad_haslo']))
        {
            echo '<div class="blad">'.$_SESSION['blad_haslo'].'</div>';
            unset($_SESSION['blad_haslo']);
        }
    ?>
    <input type="text" name="haslo2" placeholder="Powtórz haslo"/><br />
    <br />
    <input type="submit" value="Zarejestruj się" />

</form>

</body>
</html>

