﻿<?php
	function verif_ident($nom, $num, &$profil, &$err) {
	require ("Modele/connectBD.php");
	
	$req = "select * from utilisateur where password='%s' and (numero='%s' or mail='%s')";

	$sql = sprintf ($req, $num, $nom, $nom);
	
	$res = mysqli_query($link,$sql)
		or die ('erreur de requete : ' . $sql);
	if (mysqli_num_rows($res)>0) {
		$profil=mysqli_fetch_assoc($res);
		/*$profil['role'] = 'etudiant';*/
		return true;
	}	
	else {
		return false;
	}
} 

/*	function verifP_ident($nom, $num, &$profil, &$err) {
		require ("Modele/connectBD.php");
		$req = "select * from professeur where (login_prof='%s' and pass_prof='%s')";
		$sql = sprintf ($req, $nom, $num);
		
		$res = mysqli_query($link,$sql)
			or die ('erreur de requete : ' . $sql);
		if (mysqli_num_rows($res)>0) {
			$profil=mysqli_fetch_assoc($res);
			$profil['role'] = 'professeur';
			return true;
		}	
		else {
			return false;
		}
	} */

?>
