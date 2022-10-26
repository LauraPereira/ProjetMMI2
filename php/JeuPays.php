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
    $imageDeco = $ligne->imageDecoPays;
    $imagePuzzle = $ligne->imagePuzzle;
$commentaire = $ligne->commentaire;

?>
    <!DOCTYPE html>
    <html lang="fr">

    <head>
        <meta charset=utf-8 />
        <title>Hello World ! | <?php echo $nomPays ?></title>
        <meta name="description" content="<?php echo $nomPays ?>">
        <!--  <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" /> -->
        <link rel="stylesheet" href="../css/jeu.css" type="text/css" />

    </head>

    <body>
        <main>
            <a href="../index.php#Map"><img src="../media/images/BoussoleMenu.png" id="boussole"></a>
            <div id="Jeu">
                 <div id="commentaire" style="display: none"><?php echo $commentaire ?></div>
                <div id="TimerFini"></div>
                <div data-image="<?php echo $imagePuzzle; ?>" id ="imgAide"></div>
                <div id="croix"></div>
               
                <div id="TitreDeux" >
                    <p id="timer"></p>
                    <h2>Le puzzle <?php echo $nomPays ?></h2>
                    <img src="../media/images/PointDInterrogation.png" id="pointInt">
                    

                </div>

                <div id="PartieJeu">
                    <div id="PuzzlePiece">
                        <div id="ZoneVide">
                            
                            <img id="imagePuzzle" src="<?php echo $imagePuzzle;?>">
                            <?php
    $requeteSQL = "SELECT count(Pieces.pieces) FROM Pieces WHERE id_Puzzle=1";
    $statement = $pdo->query($requeteSQL) ;
    $nbLignes = $statement->fetchColumn();
    
    for($i=0; $i<$nbLignes; $i++){   
        
?>
                                <div data-emplacement="<?php echo $i;?>" class="EmplacementVide"></div>
                                <?php
    }
?>
                        </div>

                        <div id="PiecePuzzle">
                            <?php
   
    $requeteSQL = "SELECT Pieces.pieces FROM Pieces WHERE id_Puzzle='".$idLien."';";
    $statement = $pdo->query($requeteSQL) ;
	
    $j=0;
    $k=0;
    for($i=0; $i<$nbLignes; $i++){
       
        $ligne = $statement->fetch(PDO::FETCH_ASSOC) ;
        $pieces = $ligne["pieces"];
        
        $tabPhoto[$k][$j] = $pieces;
    
        $j++;
         
        if($j==8){
            $k++;
            $j=0;        
        }                     
?>

                                <img src="<?php echo $pieces;?>" class="pieces" data-piece="<?php echo $i; ?>">

                                <?php
    }
        $requeteSQL="SELECT question, reponse FROM Puzzle WHERE id= '".$idLien."'";
        $statement = $pdo->query($requeteSQL) ;
        $ligne = $statement->fetch(PDO::FETCH_OBJ) ;
        $question = $ligne->question;  
                         $reponse = $ligne->reponse;
                        
?>
                        </div>
                    </div>
                    <div id="Bulle">
                        <p>
                            <?php echo $question;?>
                        </p>
                        <div id="ZoneReponse">
                            <form id="FormReponse" method="post" action="">
                                <input type="text" name="reponse" placeholder="Tape ta réponse ici" id="SaisiUser" data-reponse="<?php echo $reponse ?>">
                                <input id="btn" type="submit" value="VALIDER" name="Valider" onclick="return false">
                            </form>
                        </div>
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
        <script src="../js/Jeu.js"></script>
    </body>

    </html>
    <?php	
	
	$pdo=null;

?>
