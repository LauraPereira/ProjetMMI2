"use strict";
document.addEventListener("DOMContentLoaded", initialiser);

var carte1;
var carte2;

/*btn du jeu*/
var btnValider = $("#btn");

var mins2 = 5; //Set the number of minutes you need
var secs2 = mins2 * 60;
var timerID;

var currentSeconds = 0;
var currentMinutes = 0;

function initialiser(evt) {

    /*Mélanger des pièces*/
    var piecesMemo = $(".carteMemo").sort(trier);
    piecesMemo.appendTo("#EmplacementCarte");

    /*Lancer le jeu lors du clique sur la div jouer*/
    var zone = document.getElementById("TimerFini");
    zone.innerHTML = "<div id='PopUpRecommencer'><h3>Clique sur 'Commencer' pour jouer, retrouve toutes les paires dans le temps impartis.</h3><input type='submit' name='Recommencer' value='Commencer' id='fin' onclick='return false''><a href='https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/index.php#Map' id='menu'>Menu</a></div>";
    zone.classList.add("devant");
    document.getElementById("fin").addEventListener("click", jouer);
    document.getElementById("fin").addEventListener("click", timer);


    $("#pointInt").click(popupAide);

    //lancement des vérification des cartes
    $(".carteMemo").click(retourneCarte);
}

/*Popup Aide*/
function popupAide(evt) {

    var div = document.getElementById("imgAide");
    var croix = document.getElementById("croix");
    div.classList.add("devant");
    div.innerHTML = '>';
    croix.classList.add("croix");
    croix.addEventListener("click", fermerPopUp);
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

//retourner carte
function retourneCarte(evt) {
    var valeur = $(this).attr("value");
    var nxCarte = $(this).attr("src", valeur);
     $("#EmplacementCarte").unbind('click');
    
    if (carte1 == null) {
       
        carte1 = $(this);
        carte1.unbind('click');
        
    } else {
        carte2 = $(this);
        carte2.unbind('click');
        window.setTimeout(verifierReponse, 500);
    }

}

//Vérification des cartes
function verifierReponse(evt) {
    var dosCarte = $('#dosCarte').text();
    if (carte1.data('carte') == carte2.data('carte')) {


        //faire dire bravo à l'otarie
        $("#TxtMemo").html('Bravo tu as trouvé une paire !');
        window.setTimeout(function () {
            $("#TxtMemo").html('Cliques sur les cartes pour les retourner !');
        }, 500);

        carte1.unbind('click');
        carte2.unbind('click');

        var nbCartes = $('.carteMemo').length;
        var compteur = 0;

        $('.carteMemo').each(function () {

            if ($(this).attr('src') != dosCarte) {
                compteur++;
            }
        });
        if (compteur == nbCartes) {
            //faire dire à l'otarie feliciation et demander si veut rejouer
            $("#TxtMemo").html('Bravo tu as trouvé toutes les paires !');
            var zone = document.getElementById("TimerFini");
            zone.innerHTML = "<div id='PopUpRecommencer'><h3>Bravo !</h3><p>Veux-tu recommencer ?</p><input type='submit' name='Recommencer' value='Recommencer' id='fin'><a href='https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/index.php#Map' id='menu'>Menu</a></div>";
            zone.classList.add("devant");
            window.clearTimeout(timerID);
            document.getElementById("timer").innerHTML = "STOP";
            document.getElementById("fin").addEventListener("click", rechargePage);
        }
    } else {
        carte1.attr("src", dosCarte);
        carte2.attr("src", dosCarte);
        carte1.click(retourneCarte);
        carte2.click(retourneCarte);

    }

    carte1 = null;
    carte2 = null;
}

/*Fin du jeu lorsque le timer est fini*/
function jeuFin(evt) {
    var timer = document.getElementById("timer");
    var zone = document.getElementById("TimerFini");
    zone.innerHTML = "<div id='PopUpRecommencer'><h3>Le temps est écoulé!</h3><p>Essaie encore !</p><input type='submit' name='Recommencer' value='Recommencer' id='fin'><a href='https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/index.php#Map' id='menu'>Menu</a></div>";
    zone.classList.add("devant");
    window.clearTimeout(timerID);
    timer.innerHTML = "STOP";
    document.getElementById("fin").addEventListener("click", rechargePage);
}

function rechargePage(evt) {
    window.location.reload();
}