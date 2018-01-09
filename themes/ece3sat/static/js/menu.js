
// Change style of navbar on scroll
window.onscroll = function() {
    var navbar = document.getElementById("nav_bar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "v1-top v1-card-2 v1-animate-top v1-white";
    } else {
        navbar.className = "v1-top";
    }
}

// Toggle the menu on small screens when clicking on the menu button
function menu_toggle() {
    var navbar = document.getElementById("nav_bar_mobile");
    if (navbar.className.indexOf("v1-show") == -1) {
        navbar.className += " v1-show";
    } else {
        navbar.className = navbar.className.replace(" v1-show", "");
    }
}
