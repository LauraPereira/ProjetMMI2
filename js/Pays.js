"use strict";
document.addEventListener("DOMContentLoaded", initialiser);

/*Div qui contient toutes les pop up vidéos*/
var div = document.getElementById("div");

/*Div selection histoire*/
var histoire = $("#p");

/*Div selection histoire*/
var cuisine = $("#cuisine");

/*Croix des popups*/
var croix = document.getElementById("croix");

function initialiser(evt) {
    
    /*Récupère lien vidéo + mise en place de la popup*/
    var VideoIntro = document.getElementById("videoIntro").value;
    div.classList.add("devant");
    div.innerHTML = '<video controls src="' + VideoIntro + '" id="video"></video>';
    croix.classList.add("croix");
    croix.addEventListener("click", fermerPopUp);
    
    /*Click sur les div histoire/cuisine pour lancer la popup*/
    histoire.click(popup);
    cuisine.click(popupCuisine);
    $("#PageJeu").click(popupChoixJeu);

}

/*Popup duchoix du jeu*/
function popupChoixJeu(evt){
    var urlPuzzle = document.getElementById("popupJeu").value;
    var urlMemory = document.getElementById("jeu2").value;
     div.classList.add("devant");
    div.innerHTML = '<div id="popupChoix"><h3>A quel jeu veux-tu jouer ?</h3><div id="choix"><a href="'+ urlPuzzle +'" class="choixJeu" >Puzzle</a> <a href="'+ urlMemory +'" class="choixJeu">Memory</a></div></div>';
    croix.classList.add("croix");
    croix.addEventListener("click",function(){
        var popupChoix = document.getElementById("popupChoix");
        div.removeChild(popupChoix);
    });
}

/*Popup Histoire*/
function popup(evt) {
    var videoHistoire = document.getElementById("videoHistoire").value;
    div.classList.add("devant");
    div.innerHTML = '<video controls src="' + videoHistoire + '" id="video"></video>';
    croix.classList.add("croix");
}

/*Popup cuisine*/
function popupCuisine(evt) {
    var videoCuisine = document.getElementById("videoCuisine").value;
    div.classList.add("devant");
    div.innerHTML = '<video controls src="' + videoCuisine + '" id="video"></video>';
    croix.classList.add("croix");
}

/*Clique de la croix pour fermer la popup*/
function fermerPopUp(evt) {
    div.classList.remove("devant");
    croix.classList.remove("croix");
    var video = document.getElementById("video");
    div.removeChild(video);
}

