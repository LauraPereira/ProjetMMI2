<?php
	header("Content-type: text/html; charset=UTF-8") ;
	
	//ouvre bdd
	require("param.inc.php");
	$pdo = new PDO("mysql:host=".MYHOST.";dbname=".MYDB,MYUSER,MYPASS);
	$pdo->query("SET NAMES utf8");
	$pdo->query("SET CHARACTER SET 'utf8'");

    $idLien = $_GET["idLien"];
	
	$requeteSQL = "SELECT * FROM pays WHERE id='".$idLien."'";
	$statement = $pdo->query($requeteSQL) ;
	$ligne = $statement->fetch(PDO::FETCH_OBJ) ;
	$nomPays = $ligne->nomPays;
    $imageDeco = $ligne->imageDecoPays;
    $carteDos = $ligne->cartesDosPays;

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
            <a href="../index.php#Map"><img src="../media/images/BoussoleMenu.png" id="boussole"></a>
            <div id="Jeu">
                <div id="TimerFini"></div>
                <div id="croix"></div>

                <div id="TitreDeux">
                    <p id="timer"></p>
                    <h2>Le memory 
                        <?php echo $nomPays ?>
                    </h2>
                </div>
                <div id="containerCarteOtarie">
                <div id="EmplacementCarte">
                    <div id="dosCarte" style="display:none"><?php echo $carteDos; ?></div>
    <?php
        $requeteSQL = "SELECT count(cartes.Carte1) FROM cartes WHERE id=5";
    $statement = $pdo->query($requeteSQL) ;
    $nbLignes = $statement->fetchColumn();
        $requeteSQL = "SELECT Carte2, Carte1, dataCartes FROM cartes WHERE id='".$idLien."';";
         $statement = $pdo->query($requeteSQL) ;
            $k =0;
            $j=0;
            
            for($i=0; $i<$nbLignes; $i++){
                $ligne = $statement->fetch(PDO::FETCH_ASSOC) ;  
            $carte1 = $ligne["Carte1"];
            $carte2 = $ligne["Carte2"];
              $dataCarte = $ligne['dataCartes'];  
                
            /*    $tabPhoto[$k][$j] =$carte1;
                $j++;
                $tabPhoto2[$k][$j] = $carte2;
                
                $j++;
                
                if($j=4){
                    $k++;
                    $j=0;
                }*/
                ?>
                    
                    <img src="<?php echo $carteDos; ?>" value="<?php echo $carte1; ?>" class="carteMemo" data-carte="<?php echo $dataCarte; ?>">
                    <img src="<?php echo $carteDos; ?>" value="<?php echo $carte2; ?>" class="carteMemo" data-carte="<?php echo $dataCarte; ?>">
                    <?php
            }
            
	   
    ?>
                </div>
                    <div id="Bulle" class="BulleMemo">
                        <p id="TxtMemo">Cliques sur les cartes pour les retourner !</p>
                    </div>
                <div id="ZoneOtarie">
                    <?php
    $requeteSQL = "SELECT imageOtarie FROM pays WHERE id='".$idLien."'";
	$statement = $pdo->query($requeteSQL) ;
	$ligne = $statement->fetch(PDO::FETCH_OBJ) ;
	$imageOtarie = $ligne->imageOtarie;
                        ?>
                        <img src="<?php echo $imageOtarie ?>" />
                </div>
                </div>
            </div>
            <?php?>
                <img src="<?php echo $imageDeco ?>" id="imageDeco">
        </main>
        <script src="../js/jquery-3.3.1.js"></script>
        <script src="../js/jquery-ui.min.js"></script>
        <script src="../js/Jeu2.js"></script>
    </body>

    </html>
    <?php	
	
	$pdo=null;

?>