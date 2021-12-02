<?php
	session_start();
	
	
$polaczenie = mysqli_connect("localhost", "root", "", "bazaseriale");
	

$login= $_POST['login'];
$haslo= $_POST['haslo'];

$zapytanie = "SELECT * FROM uzytkownik WHERE login='$login' AND haslo='$haslo'";

if($rezultat = mysqli_query($polaczenie, $zapytanie))
{
	$ilu_userow = $rezultat->num_rows;
	if($ilu_userow>0)
	{
		$_SESSION['zalogowany'] = true;
		
		$wiersz = $rezultat->fetch_assoc();
		$_SESSION['id'] = $wiersz['idUzytkownik'];
		$_SESSION['user'] = $wiersz['login'];
		
		unset($_SESSION['blad']);
		$rezultat->close();
		
		header('Location: serial.php');
	}else{
		$_SESSION['blad'] = "<span style='color:red'>Nieprawidłowy login lub haslo</span>";
		header('Location: logowanie.php');
	}
}


	


$polaczenie->close();
?>