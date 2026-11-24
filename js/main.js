(() => {
    gsap.registerPlugin(ScrollTrigger);
    gsap.registerPlugin(ScrollToPlugin);
//variables

const navLinks = document.querySelectorAll(" nav ul li a");

const burgerCon = document.querySelector("#burger-con");
const menuButton = document.querySelector("#nav-button");


const caseStudies = [
 {title: "Fanshawe Industry Night Site", link: ""},
 {title: "Bluetooth Speaker", link: ""},
 {title: "Quatro Brand Refresh", link: ""}
];

caseStudies.forEach((caseStudies) => {
//put case studies into their own divs and create an img for each to show off which project they represent, and they should have an eventlistener for when they are clicked it will open a new window to display the linked case study
});

//functions

function menuDrop() {
    burgerCon.classList.toggle("slide-toggle");
    menuButton.classList.toggle("expanded");
};

function scrollLink(e) {
    e.preventDefault();
    console.log(e.currentTarget.hash);
    let selectedLink = e.currentTarget.hash;
    gsap.to(window, 
        { duration: 2, 
            scrollTo: { y: `${selectedLink}`, 
            offsetY: 80 } });
};

//eventlisteners

navLinks.forEach((link) => {
    link.addEventListener("click", scrollLink);
});

menuButton.addEventListener("click", menuDrop);
})();