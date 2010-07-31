<?php
if (isset($_GET['lang'])) {
	$_SESSION['lang']=$_GET['lang'];
}
include_once ('locales/lang.php');
require_once('Format_liste.php');
class Classique extends Format_liste {
	function Classique() {
		$this->les_plus=array(CLASSIQUE_PLUS_1);
		$this->les_moins=array(CLASSIQUE_MOINS_1,CLASSIQUE_MOINS_2,CLASSIQUE_MOINS_3);
		$this->description=CLASSIQUE_DESCRIPTION;
	}

	function afficher($liste) {
            require_once('Inducks.class.php');
		foreach($liste as $pays=>$numeros_pays) {
			$liste_magazines=Inducks::get_noms_complets_magazines($pays);
			foreach($numeros_pays as $magazine=>$numeros) {
				echo '<u>'.$liste_magazines[$magazine].'</u>';
				$debut=true;
				sort($numeros);
				foreach($numeros as $numero) {
					if (!$debut) echo ',';
					if (is_array($numero))
						echo ' '.$numero[0];
					else
						echo ' '.$numero;
					$debut=false;
				}
				echo '<br />';
			}
		}
	}
}
?>