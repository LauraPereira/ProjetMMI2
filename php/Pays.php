<?php
	header("Content-type: text/html; charset=UTF-8") ;
	
	//ouvre bdd
	require("../param.inc.php");
	$pdo = new PDO("mysql:host=".MYHOST.";dbname=".MYDB,MYUSER,MYPASS);
	$pdo->query("SET NAMES utf8");
	$pdo->query("SET CHARACTER SET 'utf8'");

    $idLien = $_GET["idLien"];
	
	$requeteSQL = "SELECT * FROM pays WHERE id='".$idLien."'";
	$statement = $pdo->query($requeteSQL) ;
	$ligne = $statement->fetch(PDO::FETCH_OBJ) ;
	$nomPays = $ligne->nomPays;
	$VideoCuisine = $ligne->VideoCuisine;
	$VideoIntro = $ligne->VideoIntroduction;
	$VideoHistoire = $ligne->VideoHistoire;
    $imageAnimalPays = $ligne->imageAnimalPays;
    $icone = $ligne->iconeLi;
    $urlJeu = $ligne->urlJeu;
	$urlJeu2 = $ligne->urlJeu2;
    
	?>
    <!DOCTYPE html>
    <html lang="fr">

    <head>
        <meta charset=utf-8 />
        <title>Hello World ! |
            <?php echo $nomPays ?>
        </title>
        <meta name="description" content="<?php echo $nomPays ?>">
        <!--  <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" /> -->
        <link rel="stylesheet" href="../css/jeu.css" type="text/css" />

    </head>

    <body>
        <main>
            <div id="HautPage">
                <a href="../index.php#Map"><img src="../media/images/BoussoleMenu.png" id="boussolePays"></a>
                <h1 id="TitrePays">
                    Découvre le pays <?php echo $nomPays; ?>
                </h1>
            </div>

            <div id="div" class="vide"></div>
            <div id="croix" class="vide"></div>
            <div id="Background">
                <div id="Centre">
                    <input type='hidden' id='videoIntro' value="<?php echo $VideoIntro; ?>" />
                    <div id="animalPays">
                        <img src="<?php echo $imageAnimalPays ?>">
                    </div>
                    <div id="nav">
                        <nav>
                            <ul>
                                <li id="PageJeu">
                                    <img src="<?php echo $icone ?>">
                                    <p class="choix" id="btnJeu">Jeux</p>
                                    <input type="hidden" id="jeu2" value="<?php echo $urlJeu2; ?>">
                                    <input type='hidden' id='popupJeu' value="<?php echo $urlJeu; ?>"/>
                                </li>
                                <li id="p">
                                    <img src="<?php echo $icone ?>">
                                    <p class="choix"> Une Histoire</p>
                                    <input type='hidden' id='videoHistoire' value="<?php echo $VideoHistoire; ?>" />
                                </li>
                                <li id="cuisine">
                                    <img src="<?php echo $icone ?>">
                                    <p class="choix">Recette Typique</p>
                                    <input type='hidden' id='videoCuisine' value="<?php echo $VideoCuisine; ?>" />
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </main>
        <script src="../js/jquery-3.3.1.js"></script>
        <script src="../js/jquery-ui.min.js"></script>
        <script src="../js/Pays.js"></script>
    </body>

    </html>
    <?php	
	
	$pdo=null;

?>
