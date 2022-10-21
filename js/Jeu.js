"use strict";
document.addEventListener("DOMContentLoaded", initialiser);

/*btn du jeu*/
var btnValider = $("#btn");

var mins2 = 15; //Set the number of minutes you need
var secs2 = mins2 * 60;
var timerID;

var currentSeconds = 0;
var currentMinutes = 0;

function initialiser(evt) {

    /*Mélanger des pièces*/
    var piecesPuzzle = $(".pieces").sort(trier);
    piecesPuzzle.appendTo("#PiecePuzzle");

    btnValider.click(VerifierReponse);

    piecesPuzzle.draggable({
        containment: "#Jeu",
        zIndex: 300,
        revert: true,
        cursor: "pointer",
        revertDuration: 1000
    });

    var emplacementVide = $(".EmplacementVide");
    emplacementVide.droppable({
        classes: {
            "ui-droppable-hover": "survolCases"
        },
        drop: placerPiece
    });

    $("#ZoneReponse").css({display: "none"});

    /*Lancer le jeu lors du clique sur la div jouer*/
    var zone = document.getElementById("TimerFini");
    zone.innerHTML = "<div id='PopUpRecommencer'><h3>Clique sur 'Commencer' pour jouer et réponds à la question avant le temps imparti.</h3><input type='submit' name='Recommencer' value='Commencer' id='fin' onclick='return false''><a href='https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/index.php#Map' id='menu'>Menu</a></div>";
    zone.classList.add("devant");
    document.getElementById("fin").addEventListener("click", jouer);
    document.getElementById("fin").addEventListener("click", timer);

    
    $("#pointInt").click(popupAide);
}

/*Popup Aide*/
function popupAide(evt){
   
    var div = document.getElementById("imgAide");
    var imagePuzzle = div.getAttribute('data-image');
    var croix = document.getElementById("croix");
    div.classList.add("devant");
    div.innerHTML = '<img src="' + imagePuzzle + '" id="imgPuzzle"></img>';
    croix.classList.add("croix");
    croix.addEventListener("click", fermerPopUp);
}

/*ferme la popup*/
function fermerPopUp(evt) {
    var div = document.getElementById("imgAide");
     var croix = document.getElementById("croix");
    div.classList.remove("devant");
    croix.classList.remove("croix");
    var video = document.getElementById("imgPuzzle");
    div.removeChild(video);
}


/*Fonction pour placer les pièces l'action lorsque le puzzle est terminé*/
function placerPiece(evt, ui) {
    var pieceDeposee = ui.draggable;
    var caseDepot = $(this);
    if (pieceDeposee.data("piece") == caseDepot.data("emplacement")) {
        pieceDeposee.css({
            position: "static"
        });
        pieceDeposee.appendTo(caseDepot);
        pieceDeposee.draggable("destroy");
        caseDepot.droppable("destroy");
    }

    var puzzleConstruit = $("#ZoneVide");
    var nbCasesVides = puzzleConstruit.children(":empty").length;

    if (nbCasesVides == 1) {
        
        $("#imagePuzzle").css({display : "block"});
        $(".pieces").css({display : "none"});
        
        puzzleConstruit.children().css({
            border: "none"
        });
        $("#ZoneReponse").css({
            display: "block"
        });
    }
}

/*Pour mélanger les pièces*/
function trier(pieceA, pieceB) {
    if (Math.random() > 0.5) {
        return -1;
    } else {
        return 1;
    }
}

/*Recommencer le jeu quand clique sur recommencer*/
function jouer(evt) {
    var zone = document.getElementById("TimerFini");
    var divJouer = document.getElementById("PopUpRecommencer");
    zone.removeChild(divJouer);
    zone.classList.remove("devant");

}

/*Fonction du timer*/
function timer(evt) {

    timerID = setTimeout(timer, 1000);
    currentMinutes = Math.floor(secs2 / 60);
    currentSeconds = secs2 % 60;
    if (currentSeconds <= 9) currentSeconds = "0" + currentSeconds;
    secs2--;
    var timer = document.getElementById("timer");
    timer.innerHTML = currentMinutes + ":" + currentSeconds;
    if (secs2 != -1) {
        timerID = setTimeout('timer()', 1000);

    }

    if (secs2 < 0) {
        window.setTimeout(jeuFin, 0);

    }
}

/*Fin du jeu lorsque le timer est fini*/
function jeuFin(evt) {
    var timer = document.getElementById("timer");
    var zone = document.getElementById("TimerFini");
    zone.innerHTML = "<div id='PopUpRecommencer'><h3>Le temps est écoulé!</h3><p>"+$('#commentaire').html()+"<p><p>Essaie encore !</p><input type='submit' name='Recommencer' value='Recommencer' id='fin'><a href='https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/index.php#Map' id='menu'>Menu</a></div>";
    zone.classList.add("devant");
    window.clearTimeout(timerID);
    timer.innerHTML = "STOP";
    document.getElementById("fin").addEventListener("click", rechargePage);
}

/*Vérification de la réponse entré dans la barre de réponse*/
function VerifierReponse(evt) {

    var saisiUser = document.getElementById("SaisiUser").value.toUpperCase();
    var VraiReponse = document.getElementById("SaisiUser").dataset.reponse.toUpperCase();
    var zone = document.getElementById("TimerFini");
    if (saisiUser.indexOf(VraiReponse) >= 0) {

        $("#SaisiUser").css("backgroundColor", "green");
        zone.innerHTML = "<div id='PopUpRecommencer'><h3>Bravo !</h3><p>"+$('#commentaire').html()+"<p><p>Veux-tu recommencer ?</p><input type='submit' name='Recommencer' value='Recommencer' id='fin'><a href='https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/index.php#Map' id='menu'>Menu</a></div>";
        zone.classList.add("devant");
        window.clearTimeout(timerID);
        document.getElementById("timer").innerHTML = "STOP";
        document.getElementById("fin").addEventListener("click", rechargePage);

    } else {

        $("#ZoneReponse").addClass("animationBarre");
        $("#SaisiUser").css("backgroundColor", "red");
        setTimeout(function () {
            $("#ZoneReponse").removeClass("animationBarre");
        }, 500);
    }
}

function rechargePage(evt) {
    window.location.reload();
}