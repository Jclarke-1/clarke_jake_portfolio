//variables

const burgerCon = document.querySelector("#burger-con");
const menuButton = document.querySelector("#nav-button");
const gitLink = document.querySelector(".git-link");
const indeedLink = document.querySelector(".indeed-link");

const caseStudies = [
 {title: "Fanshawe Industry Night Site", link: ""},
 {title: "Bluetooth Speaker", link: ""},
 {title: "Quatro Brand Refresh", link: ""}
]

caseStudies.forEach((caseStudies) => {
//put case studies into their own divs and create an img for each to show off which project they represent, and they should have an eventlistener for when they are clicked it will open a new window to display the linked case study
});

//functions

function menuDrop() {
    burgerCon.classList.toggle("slide-toggle");
    menuButton.classList.toggle("expanded");
}

function githubPage() {
    window.open('https://github.com/Jclarke-1');
}

function indeedPage() {
    window.open('https://profile.indeed.com/?hl=en_CA&co=CA&from=gnav-homepage');
}

//eventlisteners

menuButton.addEventListener("click", menuDrop);
gitLink.addEventListener("click", githubPage);
indeedLink.addEventListener("click", indeedPage);